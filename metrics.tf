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
        exported_namespace: string(labels.exported_namespace),
        controller_namespace:string(labels.controller_namespace),
        controller_pod:string(labels.controller_pod),
        status:string(labels.status),
        state:string(labels.state),
        ingress:string(labels.ingress)
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
          group_by(clusterUid, namespace, ingress, pod, node, container, exported_namespace, controller_pod, controller_namespace, labels)
      
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
        exported_namespace,
        controller_namespace,
        controller_pod,
        ingress
          
    EOF
  }

  stage {
    input = "filtered_metrics"

    pipeline = <<-EOF
      union @request_latency

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

  for_each = var.enable_nginx_ingress_metrics ? merge({
    "Ingress" = {
      target = var.kubernetes.ingress.oid
      fields = ["ingress:name", "exported_namespace:namespace", "clusterUid"]
    },
    "Pod" = {
      target = var.kubernetes.pod.oid
      fields = ["controller_pod:name", "controller_namespace:namespace", "clusterUid"]
    }
    }
  ) : {}
}


resource "observe_board" "ingress" {
  count   = var.enable_nginx_ingress_metrics ? 1 : 0
  dataset = var.kubernetes.ingress.oid
  name    = "Nginx Ingress Monitoring"
  type    = "set"

  json = templatefile("${path.module}/boards/nginxIngressBoard.json", {
    dataset_kubernetes_cluster   = regexall(":([^/:]*)(/|$)", var.kubernetes.cluster.oid)[0][0]     # extract id from oid
    dataset_kubernetes_ingress   = regexall(":([^/:]*)(/|$)", var.kubernetes.ingress.oid)[0][0]     # extract id from oid
    dataset_kubernetes_namespace = regexall(":([^/:]*)(/|$)", var.kubernetes.namespace.oid)[0][0]   # extract id from oid
    ingress_nginxIngressMetrics  = regexall(":([^/:]*)(/|$)", observe_dataset.metrics[0].oid)[0][0] # extract id from oid
  })
}

resource "observe_board" "pod" {
  count   = var.enable_nginx_ingress_metrics ? 1 : 0
  dataset = var.kubernetes.pod.oid
  name    = "NGINX Ingress Controller Monitoring"
  type    = "set"

  json = templatefile("${path.module}/boards/nginxIngressPodBoard.json", {
    dataset_kubernetes_cluster                = regexall(":([^/:]*)(/|$)", var.kubernetes.cluster.oid)[0][0]     # extract id from oid
    dataset_kubernetes_pod                    = regexall(":([^/:]*)(/|$)", var.kubernetes.pod.oid)[0][0]         # extract id from oid
    dataset_kubernetes_namespace              = regexall(":([^/:]*)(/|$)", var.kubernetes.namespace.oid)[0][0]   # extract id from oid
    dataset_nginx-ingress_nginxIngressMetrics = regexall(":([^/:]*)(/|$)", observe_dataset.metrics[0].oid)[0][0] # extract id from oid
    dataset_prometheus_podMetrics             = regexall(":([^/:]*)(/|$)", var.pod_metrics.metrics.oid)[0][0]    # extract id from oid
  })
}
