terraform {
  required_providers {
    random = {
      version = ">= 3"
    }
    observe = {
      source  = "terraform.observeinc.com/observeinc/observe"
      version = ">= 0.14.73, < 1.0.0"
    }
  }
  required_version = ">= 1.0"
}
