locals {
  nginx_metrics = {
    nginx_ingress_controller_response_upstream_latency_per_request = {
      description = "Upstream latency per request in seconds"
      type        = "gauge"
      unit        = "seconds"
    }
    nginx_ingress_controller_response_latency_per_request = {
      description = "Response latency per request in seconds"
      type        = "gauge"
      unit        = "seconds"
    }
    nginx_ingress_controller_request_latency_per_request = {
      description = "Request latency in seconds"
      type        = "gauge"
      unit        = "seconds"
    }
    nginx_ingress_controller_config_last_reload_successful = {
      description = "1 if last config reload was successful, 0 if last reload failed"
      type        = "gauge"
      rollup      = "min"
      aggregate   = "min"
    }
    nginx_ingress_controller_requests = {
      description = "Number of requests received by the nginx ingress controller"
      type        = "gauge"
    }
    nginx_ingress_controller_nginx_process_connections = {
      description = "Number of connections on the nginx ingress controller"
      type        = "gauge"
    }
    nginx_ingress_controller_check_errors = {
      description = "Total number of nginx ingress controller checks that have failed"
      type        = "gauge"
    }
  }
}

resource "observe_dataset" "metrics" {
  count     = var.enable_nginx_ingress_metrics ? 1 : 0
  workspace = var.workspace.oid
  name      = format(var.name_format, "Nginx Ingress Metrics")
  freshness = var.freshness_default

  inputs = {
    "pod_metrics" = var.pod_metrics.metrics.oid
  }

  stage {
    alias = "filtered_metrics"

    pipeline = <<-EOF
      filter starts_with(metric, "nginx_")

      make_col 
        status:string(labels.status),
        state:string(labels.state),
        ingress:coalesce(
          string(labels.ingress), 
          if(labels.resource_type="ingress", 
            string(labels.resource_name), 
            string_null()
          )
        )
    EOF
  }

  stage {
    alias = "request_latency"

    pipeline = <<-EOF
      align 15s,
          request_latency_count:rate(m("nginx_ingress_controller_request_duration_seconds_count")),
          request_latency_seconds:rate(m("nginx_ingress_controller_request_duration_seconds_sum")),
          response_latency_count:rate(m("nginx_ingress_controller_response_duration_seconds_count")),
          response_latency_seconds:rate(m("nginx_ingress_controller_response_duration_seconds_sum")),
          upstream_latency_count:rate(m("nginx_ingress_controller_ingress_upstream_latency_seconds_count")),
          upstream_latency_seconds:rate(m("nginx_ingress_controller_ingress_upstream_latency_seconds_sum"))

      aggregate
          request_latency_count:avg(request_latency_count),
          request_latency_seconds:avg(request_latency_seconds),
          response_latency_count:avg(response_latency_count),
          response_latency_seconds:avg(response_latency_seconds),
          upstream_latency_count:avg(upstream_latency_count),
          upstream_latency_seconds:avg(upstream_latency_seconds),
          group_by(clusterUid, namespace, ingress, pod, node, container, labels)
      
      make_event

      make_col
        metrics:make_object(
          nginx_ingress_controller_response_upstream_latency_per_request:if((upstream_latency_seconds=0 and upstream_latency_count=0), 0, float64(upstream_latency_seconds/upstream_latency_count)),
          nginx_ingress_controller_request_latency_per_request:if(request_latency_seconds=0 and request_latency_count=0, 0, float64(request_latency_seconds/request_latency_count)),
          nginx_ingress_controller_response_latency_per_request:if(response_latency_seconds=0 and response_latency_count=0, 0, float64(response_latency_seconds/response_latency_count))
        )
      flatten_leaves metrics
      
      make_col metric:string(@."_c_metrics_path"),
        value:float64(@."_c_metrics_value")
      
      pick_col
        valid_from,
        metric,
        value,
        node,
        pod,
        container,
        namespace,
        clusterUid,
        labels,
        ingress
          
    EOF
  }

  stage {
    input = "filtered_metrics"

    pipeline = <<-EOF
      union @request_latency
      %{if var.nginx_plus}
      // parse upstream from nginxplus metrics
      make_col 
        upstream:string(labels.upstream),
        upstream_namespace:string(labels.resource_namespace),
        upstream_pod_ip:split_part(string(labels.server), ":", 1),
        upstream_pod_name:string(labels.pod_name),
        upstream_service:string(labels.service),
        upstream_port:right(string(labels.upstream), strlen(split_part(string(labels.upstream), "-", -1)))
      %{endif}
      interface "metric", metric:metric, value:value

      ${join("\n\n", [for metric, options in local.nginx_metrics : indent(2, format("set_metric options(\n%s\n), %q", join(",\n", [for k, v in options : format("%s: %q", k, v)]), metric))])}
    EOF
  }

}

resource "observe_link" "metrics" {
  workspace = var.workspace.oid
  source    = var.enable_nginx_ingress_metrics ? observe_dataset.metrics[0].oid : ""
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = merge(
    var.enable_nginx_ingress_metrics ? {
      "Ingress" = {
        target = var.kubernetes.ingress.oid
        fields = ["ingress:name", "namespace", "clusterUid"]
      },
      "Pod" = {
        target = var.kubernetes.pod.oid
        fields = ["pod:name", "namespace", "clusterUid"]
      }
    } : {},
    var.nginx_plus && var.enable_nginx_ingress_metrics ? {
      "Upstream Pod" = {
        target = var.kubernetes.pod.oid
        fields = ["upstream_pod_name:name", "upstream_namespace:namespace", "clusterUid"]
      },
      "Upstream Service" = {
        target = var.kubernetes.service.oid
        fields = ["upstream_service:name", "namespace", "clusterUid"]
      }
    } : {}
  )
}
