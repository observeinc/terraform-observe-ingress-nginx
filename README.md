# Observe Ingress NGINX module

This module parses logs emitted by [ingress-nginx](https://kubernetes.github.io/ingress-nginx/).

## Usage

```hcl
data "observe_workspace" "default" {
  name = "Default"
}

module "ingress_nginx" {
  source     = "git@github.com:observeinc/terraform-observe-ingress-nginx.git"
  workspace  = data.observe_workspace.default
  kubernetes = module.kubernetes
}
```

## Log formats

The current `ingress-nginx` [log format](https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/log-format/) is defined as follows:

```
log_format upstreaminfo
    '$remote_addr - $remote_user [$time_local] "$request" '
    '$status $body_bytes_sent "$http_referer" "$http_user_agent" '
    '$request_length $request_time [$proxy_upstream_name] [$proxy_alternative_upstream_name] $upstream_addr '
    '$upstream_response_length $upstream_response_time $upstream_status $req_id';
```

Prior to version 0.26.0, the format was:

```
log_format upstreaminfo
    '{{ if $cfg.useProxyProtocol }}$proxy_protocol_addr{{ else }}$remote_addr{{ end }} - '
    '[$the_real_ip] - $remote_user [$time_local] "$request" '
    '$status $body_bytes_sent "$http_referer" "$http_user_agent" '
    '$request_length $request_time [$proxy_upstream_name] [$proxy_alternative_upstream_name] $upstream_addr '
    '$upstream_response_length $upstream_response_time $upstream_status $req_id';
```

## Parsing custom formats

This module provides the ability to parse additional fields from the NGINX log line. We recommend appending fields to the standard log line. For example, to extract `host`, `ingress` and `service`, you can configure NGINX with the following log format:

```
$remote_addr - $remote_user [$time_local] "$request" $status $body_bytes_sent "$http_referer" "$http_user_agent" $request_length $request_time [$proxy_upstream_name] [$proxy_alternative_upstream_name] $upstream_addr $upstream_response_length $upstream_response_time $upstream_status $req_id $host $ingress $service
```

The surplus fields get parsed into the `remainder` field, which can be further parsed in a custom pipeline provided to the module, e.g:

```
module "ingress_nginx" {
  source          = "git@github.com:observeinc/terraform-observe-ingress-nginx.git"
  workspace       = data.observe_workspace.default
  kubernetes      = module.kubernetes
  pipeline_custom = <<-EOF
    colregex remainder, /(?P<host>\S*) (?P<ingress>\S*) (?P<service>\S*)/
  EOF
}
```

Additionally, you can pass targets to link against. This can include fields extracted in the custom pipeline, e.g:

```
module "ingress_nginx" {
  source          = "git@github.com:observeinc/terraform-observe-ingress-nginx.git"
  workspace       = data.observe_workspace.default
  kubernetes      = module.kubernetes

  pipeline_custom = <<-EOF
    colregex remainder, /(?P<ingress_namsepace>\S*) (?P<ingress_name>\S*)/
  EOF

  link_targets = {
    "Ingress" = {
      target = data.observe_dataset.ingress.oid
      fields = ["clusterUid", "ingress_namespace:namespace", "ingress_name:name"]
    }
  }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_observe"></a> [observe](#requirement\_observe) | > 0.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_observe"></a> [observe](#provider\_observe) | 0.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| observe_dataset.ingress_logs | resource |
| observe_link.ingress_logs | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Filter expression on container logs. | `string` | `"nginx-ingress-controller"` | no |
| <a name="input_freshness_default"></a> [freshness\_default](#input\_freshness\_default) | Default dataset freshness. Can be overridden with freshness input | `string` | `"1m"` | no |
| <a name="input_kubernetes"></a> [kubernetes](#input\_kubernetes) | Kubernetes module. | <pre>object({<br>    container_logs = object({ oid = string })<br>    endpoint       = object({ oid = string })<br>  })</pre> | n/a | yes |
| <a name="input_link_targets"></a> [link\_targets](#input\_link\_targets) | Datasets to link to. | <pre>map(object({<br>    target = string<br>    fields = list(string)<br>  }))</pre> | `{}` | no |
| <a name="input_log_format"></a> [log\_format](#input\_log\_format) | Log format version. | `string` | `"latest"` | no |
| <a name="input_name_format"></a> [name\_format](#input\_name\_format) | Format string to use for dataset names. Override to introduce a prefix or suffix. | `string` | `"%s"` | no |
| <a name="input_pipeline_custom"></a> [pipeline\_custom](#input\_pipeline\_custom) | Pipeline to parse additional data appended to log lines, surfaced in the `remainder` field. | `string` | `null` | no |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | Workspace to apply module to. | `object({ oid = string })` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ingress_logs"></a> [ingress\_logs](#output\_ingress\_logs) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

Apache 2 Licensed. See LICENSE for full details.
