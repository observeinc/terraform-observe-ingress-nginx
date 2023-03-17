output "ingress_logs" {
  value = observe_dataset.ingress_logs
}

output "metrics" {
  value = var.enable_nginx_ingress_metrics ? observe_dataset.metrics[0].oid : null
}

output "upstream_pod" {
  value = local.enable_nginx_plus ? observe_dataset.upstream_pod[0].oid : null
}

output "upstream_service" {
  value = local.enable_nginx_plus ? observe_dataset.upstream_service[0].oid : null
}

output "upstream_node" {
  value = local.enable_nginx_plus ? observe_dataset.upstream_node[0].oid : null
}