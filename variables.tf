variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "name_format" {
  type        = string
  description = "Format string to use for dataset names. Override to introduce a prefix or suffix."
  default     = "%s"
}
variable "freshness_default" {
  type        = string
  description = "Default dataset freshness. Can be overridden with freshness input"
  default     = "1m"
}
variable "container_name" {
  type        = string
  description = "Filter expression on container logs."
  default     = "nginx-ingress-controller"
}

variable "log_format" {
  type        = string
  description = "Log format version."
  default     = "latest"

  validation {
    condition     = var.log_format == "latest" || var.log_format == "<0.26.0"
    error_message = "Log format version must be `latest` or `<0.26.0`."
  }
}

variable "pipeline_custom" {
  type        = string
  description = "Pipeline to parse additional data appended to log lines, surfaced in the `remainder` field."
  default     = null
}

variable "enable_nginx_ingress_metrics" {
  type        = bool
  description = "Flag to enable or disable nginx ingress metrics."
  default     = true
}

variable "kubernetes" {
  type = object({
    container_logs = object({ oid = string, id = string })
    endpoint       = object({ oid = string, id = string })
    ingress        = object({ oid = string, id = string })
    pod            = object({ oid = string, id = string })
    namespace      = object({ oid = string, id = string })
    cluster        = object({ oid = string, id = string })
    service        = object({ oid = string, id = string })
    node           = object({ oid = string, id = string })
    api_update     = object({ oid = string, id = string })
    object         = object({ oid = string, id = string })
    pod_update     = object({ oid = string, id = string })
  })
  description = "Kubernetes module."
}

variable "pod_metrics" {
  type = object({
    metrics = object({ oid = string })
  })
  description = "Prometheus pod metrics module."
}

variable "link_targets" {
  description = "Datasets to link to."
  type = map(object({
    target = string
    fields = list(string)
  }))
  default = {}
}

variable "nginx_plus" {
  description = "Model metrics from NGINX Plus ingress controller."
  type        = bool
  default     = false
}
