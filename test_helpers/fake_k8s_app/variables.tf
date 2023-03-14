variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "name_format" {
  type        = string
  description = "Format string to use for dataset names. Override to introduce a prefix or suffix."
  default     = "%s"
}

variable "datastream" {
  type        = object({ dataset = string })
  description = <<-EOF
    The source datastream for created resources.
  EOF
}