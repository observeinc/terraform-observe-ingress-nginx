
resource "random_pet" "test" {}

data "observe_workspace" "default" {
  name = "Default"
}

data "observe_datastream" "default" {
  workspace = data.observe_workspace.default.oid
  name      = "System"
}

module "fake_k8s" {
  source      = "../../test_helpers/fake_k8s_app"
  workspace   = data.observe_workspace.default
  name_format = "fake_k8s_${random_pet.test.id}/%s"
  datastream  = data.observe_datastream.default
}

resource "observe_dataset" "fake_pod_metrics" {
  workspace = data.observe_workspace.default.oid
  name      = "test_${random_pet.test.id}/Fake Pod Metrics"

  inputs = {
    "datastream" = data.observe_datastream.default.dataset
  }

  stage {
    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col
        timestamp:timestamp_null(),
        metric:string_null(),
        value:float64_null(),
        clusterUid:string_null(),
        instance:string_null(),
        namespace:string_null(),
        node:string_null(),
        pod:string_null(),
        container:string_null(),
        port:string_null(),
        labels:object_null()
      interface "metric", metric:metric, value:value
    EOF
  }
}

module "nginx_plus" {
  source         = "../.."
  workspace      = data.observe_workspace.default
  name_format    = "test_nginx_plus_${random_pet.test.id}/%s"
  container_name = "nginx-plus-ingress"
  kubernetes     = module.fake_k8s
  pod_metrics = {
    "metrics" = observe_dataset.fake_pod_metrics
  }
  nginx_plus = true
}