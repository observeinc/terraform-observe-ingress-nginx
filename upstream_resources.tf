
resource "observe_dataset" "upstream_pod" {
  count     = local.enable_nginx_plus ? 1 : 0
  workspace = var.workspace.oid
  name      = format(var.name_format, "Upstream Pod")
  icon_url  = "sugar-cubes"
  freshness = var.freshness_default

  description = <<-EOF
    Pods that are handling requests upstream of an ingress.
  EOF

  inputs = {
    "pod"     = var.kubernetes.pod.oid
    "metrics" = observe_dataset.metrics[0].oid
  }

  stage {
    alias    = "upstream_pods_from_metrics"
    input    = "metrics"
    pipeline = <<-EOF
      filter metric = "nginx_ingress_nginxplus_upstream_server_requests"
      align frame(back:1m),
        requests:any_not_null(m("nginx_ingress_nginxplus_upstream_server_requests"))
      timestats group_by(upstream_pod)
    EOF
  }

  stage {
    alias    = "upstream_pods"
    input    = "pod"
    pipeline = <<-EOF
      exists name = @upstream_pods_from_metrics.upstream_pod
    EOF
  }
}


resource "observe_dataset" "upstream_service" {
  count     = local.enable_nginx_plus ? 1 : 0
  workspace = var.workspace.oid
  name      = format(var.name_format, "Upstream Service")
  icon_url  = "service"
  freshness = var.freshness_default

  description = <<-EOF
    Services that are handling requests upstream of an ingress.
  EOF

  inputs = {
    "service" = var.kubernetes.service.oid
    "metrics" = observe_dataset.metrics[0].oid
  }

  stage {
    alias    = "upstream_services_from_metrics"
    input    = "metrics"
    pipeline = <<-EOF
      filter metric = "nginx_ingress_nginxplus_upstream_server_requests"
      align frame(back:1m),
        requests:any_not_null(m("nginx_ingress_nginxplus_upstream_server_requests"))
      timestats group_by(upstream_service)
    EOF
  }

  stage {
    alias    = "upstream_services"
    input    = "service"
    pipeline = <<-EOF
      exists name = @upstream_services_from_metrics.upstream_service
    EOF
  }
}


resource "observe_dataset" "upstream_node" {
  count     = local.enable_nginx_plus ? 1 : 0
  workspace = var.workspace.oid
  name      = format(var.name_format, "Upstream Node")
  icon_url  = "heart"
  freshness = var.freshness_default

  description = <<-EOF
    Nodes that are handling requests upstream of an ingress.
  EOF

  inputs = {
    "node"    = var.kubernetes.node.oid
    "metrics" = observe_dataset.metrics[0].oid
  }

  stage {
    alias    = "upstream_nodes_from_metrics"
    input    = "metrics"
    pipeline = <<-EOF
      filter metric = "nginx_ingress_nginxplus_upstream_server_requests"
      align frame(back:1m),
        requests:any_not_null(m("nginx_ingress_nginxplus_upstream_server_requests"))
      timestats group_by(upstream_node)
    EOF
  }

  stage {
    alias    = "upstream_nodes"
    input    = "node"
    pipeline = <<-EOF
      exists name = @upstream_nodes_from_metrics.upstream_node
    EOF
  }
}

resource "observe_link" "upstream_pod" {
  workspace = var.workspace.oid
  source    = local.enable_nginx_plus ? observe_dataset.upstream_pod[0].oid : ""
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = merge(
    local.enable_nginx_plus ? {
      "Pod" = {
        target = var.kubernetes.pod.oid
        fields = ["name", "namespace", "clusterUid"]
      }
    } : {}
  )
}

resource "observe_link" "upstream_service" {
  workspace = var.workspace.oid
  source    = local.enable_nginx_plus ? observe_dataset.upstream_service[0].oid : ""
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = merge(
    local.enable_nginx_plus ? {
      "Service" = {
        target = var.kubernetes.service.oid
        fields = ["name", "namespace", "clusterUid"]
      }
    } : {}
  )
}

resource "observe_link" "upstream_node" {
  workspace = var.workspace.oid
  source    = local.enable_nginx_plus ? observe_dataset.upstream_node[0].oid : ""
  target    = each.value.target
  fields    = each.value.fields
  label     = each.key

  for_each = merge(
    local.enable_nginx_plus ? {
      "Node" = {
        target = var.kubernetes.node.oid
        fields = ["name", "clusterUid"]
      }
    } : {}
  )
}