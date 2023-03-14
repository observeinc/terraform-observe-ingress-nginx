
resource "observe_dataset" "container_logs" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Container Logs")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {

    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col
        timestamp:timestamp_null(),
        log:string_null(),
        stream:string_null(),
        podName:string_null(),
        containerName:string_null(),
        clusterUid:string_null(),
        nodeName:string_null(),
        namespace:string_null(),
        containerId:string_null()
      set_valid_from timestamp
    EOF
  }
}

resource "observe_dataset" "endpoint" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Endpoint")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {
    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col 
        name:string_null(),
        namespace:string_null(),
        ready:string_null(),
        uid:string_null(),
        podName:string_null(),
        nodeName:string_null(),
        portName:string_null(),
        ip:string_null(), 
        port:int64_null(), 
        protocol:string_null(), 
        clusterUid:string_null()

      make_resource
        name,
        namespace,
        ready,
        uid,
        podName,
        nodeName,
        portName,
        primary_key(ip, port, protocol, clusterUid)
    EOF
  }
}

resource "observe_dataset" "ingress" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Ingress")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {
    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col 
        name:string_null(),
        namespace:string_null(),
        spec:string_null(),
        uid:string_null(),
        clusterUid:string_null()

      make_resource
        name,
        namespace,
        spec,
        primary_key(clusterUid, uid)
      add_key clusterUid, namespace, name
      set_label name
    EOF
  }
}

resource "observe_dataset" "pod" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Pod")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {
    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col 
        name:string_null(),
        namespace:string_null(),
        spec:string_null(),
        uid:string_null(),
        clusterUid:string_null(),
        status:string_null(),
        podIP:string_null(),
        nodeName:string_null(),
        replicasetName:string_null(),
        daemonsetName:string_null(),
        statefulsetName:string_null(),
        deploymentName:string_null(),
        jobName:string_null(),
        cronjobName:string_null()

      make_resource
        status,
        podIP,
        nodeName,
        replicasetName,
        daemonsetName,
        statefulsetName,
        deploymentName,
        jobName,
        cronjobName,
        primary_key(name, namespace, uid, clusterUid)

      add_key clusterUid, uid
      add_key clusterUid, uid, name
      add_key clusterUid, namespace, name
      add_key clusterUid, podIP

      make_col
        containerCount:0,
        notReady:0,
        restartCount:0

      // reorder controllers towards end
      pick_col 
        @."Valid From",
        @."Valid To",
        name,
        namespace,
        clusterUid,
        uid,
        status,
        podIP,
        nodeName,
        containerCount,
        notReady,
        restartCount,
        replicasetName,
        daemonsetName,
        statefulsetName,
        deploymentName,
        jobName,
        cronjobName
      set_label name

    EOF
  }
}

resource "observe_dataset" "namespace" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Namespace")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {
    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col 
        name:string_null(),
        phase:string_null(),
        uid:string_null(),
        clusterUid:string_null()


      make_resource 
        name,
        phase,
        primary_key(uid, clusterUid)

      add_key clusterUid, name
      set_label name

    EOF
  }
}

resource "observe_dataset" "cluster" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Cluster")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {
    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col 
        name:string_null(),
        uid:string_null()

      make_resource
        name,
        primary_key(uid)
      set_label name
    EOF
  }
}

resource "observe_dataset" "service" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Service")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {
    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col 
        name:string_null(),
        namespace:string_null(),
        uid:string_null(),
        type:string_null(),
        clusterIP:string_null(),
        clusterUid:string_null(),
        ports:any_null(),
        selector:object_null()

      make_resource
        uid,
        type,
        clusterIP,
        ports,
        selector,
        primary_key(name, namespace, clusterUid)

      add_key clusterUid, uid
      set_label name

    EOF
  }
}


resource "observe_dataset" "node" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Node")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {
    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col 
        name:string_null(),
        uid:string_null(),
        role:string_null(),
        kubeletVersion:string_null(),
        osImage:string_null(),
        kernelVersion:string_null(),
        allocatable_cpu:float64_null(),
        allocatable_memory:float64_null(),
        allocatable_pods:int64_null(),
        containerRuntimeVersion:string_null(),
        internalIP:string_null(),
        externalIP:string_null(),
        internalDNS:string_null(),
        externalDNS:string_null(),
        providerID:string_null(),
        clusterUid:string_null()


      make_resource
        uid,
        role,
        kubeletVersion,
        osImage,
        kernelVersion,
        allocatable_cpu,
        allocatable_memory,
        allocatable_pods,
        containerRuntimeVersion,
        internalIP,
        externalIP,
        internalDNS,
        externalDNS,
        providerID,
        primary_key(name, clusterUid)

      set_primary_key clusterUid, name
      add_key clusterUid, uid
      add_key clusterUid, internalIP
      set_label name

    EOF
  }
}

resource "observe_dataset" "api_update" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Api Update")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {

    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col
        timestamp:timestamp_null(),
        apiVersion:string_null(),
        kind:string_null(),
        uid:string_null(),
        name:string_null(),
        resourceVersion:string_null(),
        ttl:duration_null(),
        object:object_null(),
        clusterUid:string_null(),
        namespace:string_null()
    EOF
  }
}

resource "observe_dataset" "object" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Object")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {
    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col 
        name:string_null(),
        uid:string_null(),
        kind:string_null(),
        namespace:string_null(),
        annotations:object_null(),
        labels:object_null(),
        clusterUid:string_null()

      make_resource
        kind,
        name,
        namespace,
        annotations,
        labels,
        primary_key(clusterUid, uid)
      add_key clusterUid, kind, namespace, name

    EOF
  }
}


resource "observe_dataset" "pod_update" {
  workspace = var.workspace.oid
  name      = format(var.name_format, "Pod Update")

  inputs = {
    "datastream" = var.datastream.dataset
  }

  stage {

    pipeline = <<-EOF
      make_col empty:"false"
      filter empty="true"
      make_col
        timestamp:timestamp_null(),
        uid:string_null(),
        name:string_null(),
        ttl:duration_null(),
        object:object_null(),
        clusterUid:string_null(),
        namespace:string_null(),
        status:string_null(),
        podIP:string_null(),
        nodeName:string_null(),
        replicasetName:string_null(),
        daemonsetName:string_null(),
        statefulsetName:string_null(),
        jobName:string_null(),
        deploymentName:string_null(),
        cronjobName:string_null()
    EOF
  }
}
