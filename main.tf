locals {
  latest_version = var.log_format == "latest"
  legacy_version = var.log_format == "<0.26.0"
}

resource "observe_dataset" "ingress_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Ingress Logs")
  freshness = var.freshness_default

  inputs = {
    "container_logs" = var.kubernetes.container_logs.oid
  }

  stage {
    pipeline = <<-EOF
      filter containerName = "${var.container_name}" and stream = "stdout"
    EOF
  }

  dynamic "stage" {
    for_each = local.latest_version ? [1] : []
    content {
      pipeline = <<-EOF
        extract_regex log,
          /^(?P<remote_addr>\S*) - (?P<remote_user>\S*) \[(?P<time_local>[^\]]*)\] "(?P<request>[^"]*)" (?P<status>\S*) (?P<body_bytes_sent>\S*) "(?P<http_referer>[^"]*)" "(?P<http_user_agent>[^"]*)" (?P<request_length>\S*) (?P<request_time>\S*) \[(?P<proxy_upstream_name>[^\]]*)\] \[(?P<proxy_alternative_upstream_name>[^\]]*)\] (?P<upstream_addr>\S*) (?P<upstream_response_length>\S*) (?P<upstream_response_time>\S*) (?P<upstream_status>\S*) (?P<req_id>\S*)(?P<remainder>.*)/

        extract_regex request, /(?P<method>\S+)\s?(?P<path>\S+?)\s?(?P<protocol>\S+?)/
        pick_col
          timestamp,
          remote_addr:case(remote_addr = "-" or remote_addr = "", string_null(), true, remote_addr),
          remote_user:case(remote_user = "-" or remote_user = "", string_null(), true, remote_user),
          time_local:case(time_local = "-" or time_local = "", string_null(), true, time_local),
          request,
          status:int64(status),
          body_bytes_sent:int64(body_bytes_sent),
          http_referer:case(http_referer = "-" or http_referer = "", string_null(), true, http_referer),
          http_user_agent:case(http_user_agent = "-" or http_user_agent = "", string_null(), true, http_user_agent),
          request_length:int64(request_length),
          request_time:duration(int64(float64(request_time) * 1000 * 1000 * 1000)),
          proxy_upstream_name:case(proxy_upstream_name = "-" or proxy_upstream_name = "", string_null(), true, proxy_upstream_name),
          proxy_alternative_upstream_name:case(proxy_alternative_upstream_name = "-" or proxy_alternative_upstream_name = "", string_null(), true, proxy_alternative_upstream_name),
          upstream_addr:case(upstream_addr = "-" or upstream_addr = "", string_null(), true, upstream_addr),
          upstream_response_length:int64(upstream_response_length),
          upstream_response_time:duration(int64(float64(upstream_response_time) * 1000 * 1000 * 1000)),
          upstream_status:int64(upstream_status),
          req_id:case(req_id = "-" or req_id = "", string_null(), true, req_id),
          clusterUid,
          namespace,
          podName,
          containerName,
          remainder,
          log
      EOF
    }
  }

  dynamic "stage" {
    for_each = local.legacy_version ? [1] : []
    content {
      pipeline = <<-EOF
        extract_regex log,
          /^(?P<remote_addr>\S*) - \[(?P<the_real_ip>[^\]]*)\] - (?P<remote_user>\S*) \[(?P<time_local>[^\]]*)\] "(?P<request>[^"]*)" (?P<status>\S*) (?P<body_bytes_sent>\S*) "(?P<http_referer>[^"]*)" "(?P<http_user_agent>[^"]*)" (?P<request_length>\S*) (?P<request_time>\S*) \[(?P<proxy_upstream_name>[^\]]*)\] (?P<upstream_addr>\S*) (?P<upstream_response_length>\S*) (?P<upstream_response_time>\S*) (?P<upstream_status>\S*) (?P<req_id>\S*)(?P<remainder>.*)?/

        extract_regex request, /(?P<method>\S+)\s?(?P<path>\S+?)\s?(?P<protocol>\S+?)/
        pick_col
          timestamp,
          remote_addr:case(remote_addr = "-" or remote_addr = "", string_null(), true, remote_addr),
          the_real_ip:case(the_real_ip = "-" or the_real_ip = "", string_null(), true, the_real_ip),
          remote_user:case(remote_user = "-" or remote_user = "", string_null(), true, remote_user),
          time_local:case(time_local = "-" or time_local = "", string_null(), true, time_local),
          request,
          status:int64(status),
          body_bytes_sent:int64(body_bytes_sent),
          http_referer:case(http_referer = "-" or http_referer = "", string_null(), true, http_referer),
          http_user_agent:case(http_user_agent = "-" or http_user_agent = "", string_null(), true, http_user_agent),
          request_length:int64(request_length),
          request_time:duration(int64(float64(request_time) * 1000 * 1000 * 1000)),
          proxy_upstream_name:case(proxy_upstream_name = "-" or proxy_upstream_name = "", string_null(), true, proxy_upstream_name),
          upstream_addr:case(upstream_addr = "-" or upstream_addr = "", string_null(), true, upstream_addr),
          upstream_response_length:int64(upstream_response_length),
          upstream_response_time:duration(int64(float64(upstream_response_time) * 1000 * 1000 * 1000)),
          upstream_status:int64(upstream_status),
          req_id:case(req_id = "-" or req_id = "", string_null(), true, req_id),
          clusterUid,
          namespace,
          podName,
          containerName,
          log,
          remainder
      EOF
    }
  }

  stage {
    pipeline = <<-EOF
      // TODO: upstream_addr is actually a comma-separated list of addresses, we only use last one
      // TODO: path of domain socket, ipv6
      make_col upstreams:split(upstream_addr, ",")

      make_col request:split(request, " ")
      make_col protocol:string(request[2])
      make_col path:parseurl(strcat("http://localhost", decode_uri_component(string(request[1]))))
      make_col path:strcat("/", string(path.path)), parameters:object(path.parameters)
      make_col method:string(request[0])
      drop_col request

      extract_regex string(upstreams[0]), /^(?P<upstream_ip>([0-9]{1,3}\.){3}[0-9]{1,3}):(?P<upstream_port>\d+)$/
      make_col upstream_protocol:case(not isnull(upstream_ip), "TCP"), upstream_port:int64(upstream_port)
      drop_col upstreams

      colshow log:false, time_local:false, remainder:false
      colenum status:true, upstream_status:true
    EOF
  }

  dynamic "stage" {
    for_each = var.pipeline_custom != null ? [1] : []
    content {
      pipeline = var.pipeline_custom
    }
  }
}

resource "observe_link" "ingress_logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.ingress_logs.oid
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = merge({
    "Endpoint" = {
      target = var.kubernetes.endpoint.oid
      fields = ["upstream_ip:ip", "upstream_port:port", "upstream_protocol:protocol", "clusterUid"]
    }
    }, var.link_targets
  )
}

resource "observe_dataset" "nginx_ingress_metrics" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Nginx Ingress Metrics")
  freshness = var.freshness_default

  inputs = {
    "observation_dataset" = var.kubernetes.kubelet_metrics.oid
  }

  stage {
    pipeline = <<-EOF
      filter contains(field, "nginx")

      // we need these columns to link to ingress resources
      make_col ingress:string(tags.ingress),
        namespace:string(tags.namespace),
        ingress_namespace:if(is_null(tags.exported_namespace), string(tags.namespace), string(tags.exported_namespace))

      pick_col timestamp,
        name,
          field,
          value,
          clusterUid,
          tags,
          ingress,
          namespace,
          ingress_namespace,
          pod:string(tags.pod),
          state:string(tags.state),
          status:string(tags.status)
          

      interface "metric", metric:field, value:value
    EOF
  }
}

resource "observe_dataset" "nginx_ingress_controller_resources" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Nginx Ingress Controller")
  freshness = var.freshness_default

  inputs = {
    "api_update" = var.kubernetes.api_update.oid
  }

  stage {
    pipeline = <<-EOF
      filter starts_with(apiVersion, "networking.k8s.io") and (kind = "IngressClass") and object.spec.controller = "k8s.io/ingress-nginx"

      make_resource options(expiry:duration_hr(1)),
          object,
          namespace,
          primary_key(name, clusterUid)
      
      add_key namespace, clusterUid
          
      // TODO: Figure out multiple ingresses
      // add_key name, clusterUid, namespace
    EOF
  }
}



resource "observe_link" "ingress_metrics_link" {
    workspace = var.workspace.oid
    source    = observe_dataset.nginx_ingress_metrics.oid
    target    = each.value.target
    fields    = each.value.fields
    label     = each.key

    for_each = merge({
      "Ingress" = {
        target = var.kubernetes.ingress.oid
        fields = ["ingress:name", "ingress_namespace:namespace", "clusterUid"]
      },
      "Controller" = {
        target = observe_dataset.nginx_ingress_controller_resources.oid
        fields = ["clusterUid", "namespace"]
      }
      }, var.link_targets
    )
}

resource "observe_link" "ingress_resources_link" {
    workspace = var.workspace.oid
    source    = var.kubernetes.ingress.oid
    target    = each.value.target
    fields    = each.value.fields
    label     = each.key

    for_each = merge({
      "Ingress" = {
        target = observe_dataset.nginx_ingress_controller_resources.oid
        fields = ["ingressClassName:name", "clusterUid"]
      }
      }, var.link_targets
    )
}

resource "observe_board" "ingress_nginx_board" {
  dataset = var.kubernetes.ingress.oid
  name = "NGINX Ingress Metrics"
  type = "set"
  json = templatefile("${path.module}/boards/nginx_ingress_metrics.json", {
    dataset_nginx-ingress_nginxIngressMetrics = observe_dataset.nginx_ingress_metrics.id
    dataset_kubernetes_ingress = var.kubernetes.ingress.id
    dataset_kubernetes_cluster = var.kubernetes.cluster.id
    dataset_kubernetes_namespace = var.kubernetes.namespace.id
  })
}

resource "observe_board" "ingress_controller_requests_nginx_board" {
  dataset = observe_dataset.nginx_ingress_controller_resources.oid
  name = "Request/Response Metrics"
  type = "set"
  json = templatefile("${path.module}/boards/nginx_controller_request.json", {
    dataset_nginx-ingress_nginxIngressMetrics = observe_dataset.nginx_ingress_metrics.id
    dataset_nginx-ingress_nginxIngressController = observe_dataset.nginx_ingress_controller_resources.id
  })
}

resource "observe_board" "ingress_controller_summary_nginx_board" {
  dataset = observe_dataset.nginx_ingress_controller_resources.oid
  name = "Controller Summarys"
  type = "set"
  json = templatefile("${path.module}/boards/nginx_controller_summary.json", {
    dataset_kubernetes_cluster = var.kubernetes.cluster.id
    dataset_kubernetes_namespace = var.kubernetes.namespace.id
    dataset_nginx-ingress_nginxIngressMetrics = observe_dataset.nginx_ingress_metrics.id
    dataset_nginx-ingress_nginxIngressController = observe_dataset.nginx_ingress_controller_resources.id
  })
}