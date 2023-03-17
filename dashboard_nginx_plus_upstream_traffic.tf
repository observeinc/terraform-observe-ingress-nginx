
resource "observe_dashboard" "upstream_traffic" {
  count = var.nginx_plus && var.enable_nginx_ingress_metrics ? 1 : 0
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "card-9a0c7qdm"
              title    = "Dashboard Content"
            }
            items = []
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-5so6vv4y"
              title    = "Overview"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-wg6axlym"
                  stageId  = "stage-uqvpljgj"
                }
                layout = {
                  h           = 12
                  i           = "card-wg6axlym"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ku4jjti1"
                  stageId  = "stage-c9dgo5cl"
                }
                layout = {
                  h           = 12
                  i           = "card-ku4jjti1"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-w4k9l2o2"
                  stageId  = "stage-5hhm7qxh"
                }
                layout = {
                  h           = 9
                  i           = "card-w4k9l2o2"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 12
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-t9y20c9f"
                  stageId  = "stage-3vuai1c8"
                }
                layout = {
                  h           = 18
                  i           = "card-t9y20c9f"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 12
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-6y56wwdk"
                  stageId  = "stage-rmayqsun"
                }
                layout = {
                  h           = 9
                  i           = "card-6y56wwdk"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 21
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-1k019oxe"
              title    = "Request Count Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-plgyxzol"
                  stageId  = "stage-ovcdfnll"
                }
                layout = {
                  h           = 8
                  i           = "card-plgyxzol"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3j22phfw"
                  stageId  = "stage-m13d21kk"
                }
                layout = {
                  h           = 8
                  i           = "card-3j22phfw"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-cfhtbqwq"
                  stageId  = "stage-htzlizf1"
                }
                layout = {
                  h           = 8
                  i           = "card-cfhtbqwq"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-92bteomj"
              title    = "4xx Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-70m03tzd"
                  stageId  = "stage-xsaqgstd"
                }
                layout = {
                  h           = 8
                  i           = "card-70m03tzd"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ek78rmbh"
                  stageId  = "stage-aam8l83x"
                }
                layout = {
                  h           = 8
                  i           = "card-ek78rmbh"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-2w846sgk"
                  stageId  = "stage-y5gv8qdv"
                }
                layout = {
                  h           = 8
                  i           = "card-2w846sgk"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-3n101kzh"
              title    = "5xx Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-tu3wt39y"
                  stageId  = "stage-ioj9rs5h"
                }
                layout = {
                  h           = 8
                  i           = "card-tu3wt39y"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-a7r3fcnh"
                  stageId  = "stage-bogmpeax"
                }
                layout = {
                  h           = 8
                  i           = "card-a7r3fcnh"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-slj2r60f"
                  stageId  = "stage-ovs2fbpq"
                }
                layout = {
                  h           = 8
                  i           = "card-slj2r60f"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-psdx5vur"
              title    = "Response Time Details"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  id       = "card-tibuqknq"
                  stageId  = "stage-q6pewe16"
                }
                layout = {
                  h           = 8
                  i           = "card-tibuqknq"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-w1o1g7ix"
                  stageId  = "stage-lhfig12b"
                }
                layout = {
                  h           = 8
                  i           = "card-w1o1g7ix"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-k3ithkwp"
                  stageId  = "stage-ggmmyyvm"
                }
                layout = {
                  h           = 8
                  i           = "card-k3ithkwp"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-nyxxazik"
              title    = "Update Events"
            }
            items = [
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-y2s42af1"
                  parameterId = "api_update_kind"
                }
                layout = {
                  h           = 4
                  i           = "card-y2s42af1"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 0
                  y      = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-1txdg1x9"
                  stageId  = "stage-vkrqy4eo"
                }
                layout = {
                  h           = 13
                  i           = "card-1txdg1x9"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-eheb07sx"
                  stageId  = "stage-qme685l5"
                }
                layout = {
                  h           = 15
                  i           = "card-eheb07sx"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 13
                }
              },
            ]
          },
          {
            card = {
              cardType = "section"
              closed   = false
              id       = "section-suurmykx"
              title    = "Documentation"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-jyy1pojv"
                  text     = <<-EOT
                                        # NGINX Ingress
                                        https://kubernetes.io/docs/concepts/services-networking/ingress/
                                        
                                        Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. Traffic routing is controlled by rules defined on the Ingress resource.
                                        
                                        An Ingress may be configured to give Services externally-reachable URLs, load balance traffic, terminate SSL / TLS, and offer name-based virtual hosting. An Ingress controller is responsible for fulfilling the Ingress, usually with a load balancer, though it may also configure your edge router or additional frontends to help handle the traffic.
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 15
                  i           = "card-jyy1pojv"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-mo15k132"
                  text     = <<-EOT
                                        # Notes
                                        Observe exposes request, response, and upstream latencies on the ingress resources themselves.  For monitoring requests, connections, resource consumption, and config reload errors/success, graphlink to the pod resource where the controller is deployed.
                                        
                                        From here, you can GraphLink to:
                                        * Ingress Logs
                                        * Container Logs
                                        * Cluster
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 15
                  i           = "card-mo15k132"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 0
                }
              },
            ]
            lastModified = 1677528554146
          },
          {
            card = {
              cardType = "section"
              closed   = true
              id       = "section-1h8hh4u8"
              title    = "Template Notes"
            }
            items = [
              {
                card = {
                  cardType = "text"
                  id       = "card-crmbtlp3"
                  text     = <<-EOT
                                        Timeseries: Request Count, 
                                        
                                        Rate, maximum, grouped by ingress, status
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 15
                  i           = "card-crmbtlp3"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-s0mot1f6"
                  text     = <<-EOT
                                        Timeseries: Request Latency
                                        
                                        Avg, grouped by ingress, namespace, cluster
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 12
                  i           = "card-s0mot1f6"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-i5b37xkx"
                  text     = <<-EOT
                                        Timeseries: Upstream Latency
                                        
                                        Avg, grouped by ingress, namespace, cluster
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 12
                  i           = "card-i5b37xkx"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "text"
                  id       = "card-hijdinrj"
                  text     = <<-EOT
                                        Timeseries: Response Latency
                                        
                                        Avg, grouped by ingress, namespace, cluster
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h           = 12
                  i           = "card-hijdinrj"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-70m03tzd"
                  stageId  = "stage-xsaqgstd"
                }
                layout = {
                  h           = 8
                  i           = "card-70m03tzd"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-ek78rmbh"
                  stageId  = "stage-aam8l83x"
                }
                layout = {
                  h           = 8
                  i           = "card-ek78rmbh"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-2w846sgk"
                  stageId  = "stage-y5gv8qdv"
                }
                layout = {
                  h           = 8
                  i           = "card-2w846sgk"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-tu3wt39y"
                  stageId  = "stage-ioj9rs5h"
                }
                layout = {
                  h           = 8
                  i           = "card-tu3wt39y"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-a7r3fcnh"
                  stageId  = "stage-bogmpeax"
                }
                layout = {
                  h           = 8
                  i           = "card-a7r3fcnh"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-slj2r60f"
                  stageId  = "stage-ovs2fbpq"
                }
                layout = {
                  h           = 8
                  i           = "card-slj2r60f"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-plgyxzol"
                  stageId  = "stage-ovcdfnll"
                }
                layout = {
                  h           = 8
                  i           = "card-plgyxzol"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-3j22phfw"
                  stageId  = "stage-m13d21kk"
                }
                layout = {
                  h           = 8
                  i           = "card-3j22phfw"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-cfhtbqwq"
                  stageId  = "stage-htzlizf1"
                }
                layout = {
                  h           = 8
                  i           = "card-cfhtbqwq"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-tibuqknq"
                  stageId  = "stage-q6pewe16"
                }
                layout = {
                  h           = 8
                  i           = "card-tibuqknq"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-w1o1g7ix"
                  stageId  = "stage-lhfig12b"
                }
                layout = {
                  h           = 8
                  i           = "card-w1o1g7ix"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 4
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-k3ithkwp"
                  stageId  = "stage-ggmmyyvm"
                }
                layout = {
                  h           = 8
                  i           = "card-k3ithkwp"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 4
                  x           = 8
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-1txdg1x9"
                  stageId  = "stage-vkrqy4eo"
                }
                layout = {
                  h           = 13
                  i           = "card-1txdg1x9"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-eheb07sx"
                  stageId  = "stage-qme685l5"
                }
                layout = {
                  h           = 15
                  i           = "card-eheb07sx"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 12
                  x           = 0
                  y           = 13
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-57rgsbkk"
                  stageId  = "stage-sxe33wi6"
                }
                layout = {
                  h           = 9
                  i           = "card-57rgsbkk"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  id       = "card-jzgkojt8"
                  stageId  = "stage-72msizl0"
                }
                layout = {
                  h           = 15
                  i           = "card-jzgkojt8"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  static      = false
                  w           = 6
                  x           = 6
                  y           = 5
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  id          = "card-y2s42af1"
                  parameterId = "api_update_kind"
                }
                layout = {
                  h           = 4
                  i           = "card-y2s42af1"
                  isDraggable = true
                  isResizable = true
                  moved       = false
                  resizeHandles = [
                    "e",
                  ]
                  static = false
                  w      = 4
                  x      = 0
                  y      = 0
                }
              },
            ]
            lastModified = 1678743952597
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            controlledFilterStageId = "stage-e41zzdb0"
            datasetId               = local.ingress
            defaultValue = {
              datasetref = {
                datasetId = local.ingress
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-nct5ckku"
            name                  = "ingress"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
          {
            controlledFilterStageId = "stage-67pmrvox"
            datasetId               = local.pod
            defaultValue = {
              datasetref = {
                datasetId = local.pod
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-escdjagk"
            name                  = "pod"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
          {
            controlledFilterStageId = "stage-jzr2w1hh"
            datasetId               = local.service
            defaultValue = {
              datasetref = {
                datasetId = local.service
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-umv7d0i4"
            name                  = "service"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
          {
            controlledFilterStageId = "stage-f4g26tk5"
            datasetId               = local.node
            defaultValue = {
              datasetref = {
                datasetId = local.node
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-rg4fpj8r"
            name                  = "node"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
          {
            allowEmpty = true
            defaultValue = {
              string = ""
            }
            emptyValueEncoding    = "Empty String"
            emptyValueLabelOption = "All Values"
            id                    = "api_update_kind"
            name                  = "API Update Kind"
            source                = "CustomData"
            sourceCustomData = {
              Deployment = "Deployment"
              Endpoint   = "Endpoint"
              Node       = "Node"
              Pod        = "Pod"
              Service    = "Service"
            }
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
        ]
        selectedStageId = "stage-x3j2nphi"
        timeRange = {
          display               = "Today 08:48:04 → 12:48:04"
          endTime               = null
          millisFromCurrentTime = 14400000
          originalDisplay       = "Past 4 hours"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_4_HOURS"
          }
        }
      }
    }
  )
  name = local.dashboard_name_nginx_plus_upstream_traffic
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.ingress
          }
        }
        id   = "input-parameter-nct5ckku"
        name = "ingress"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
      {
        defaultValue = {
          datasetref = {
            datasetId = local.pod
          }
        }
        id   = "input-parameter-escdjagk"
        name = "pod"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
      {
        defaultValue = {
          datasetref = {
            datasetId = local.service
          }
        }
        id   = "input-parameter-umv7d0i4"
        name = "service"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
      {
        defaultValue = {
          datasetref = {
            datasetId = local.node
          }
        }
        id   = "input-parameter-rg4fpj8r"
        name = "node"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
      {
        defaultValue = {
          string = ""
        }
        id   = "api_update_kind"
        name = "API Update Kind"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-e41zzdb0"
        input = [
          {
            datasetId   = local.ingress
            datasetPath = null
            inputName   = "kubernetes/Ingress"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "1" = "clusterUid"
              "2" = "uid"
              "3" = "Valid From"
              "4" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 0
          inputList = [
            {
              datasetId   = local.ingress
              inputName   = "kubernetes/Ingress"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          managers        = []
          pipelineComment = "Filtered Dataset Controlled Filter Stage"
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            linkify     = true
            progressive = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindStats",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "kubernetes/Ingress"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-fqwl4cek"
              index    = 0
              isPinned = false
              opal = [
                "// Filtered Dataset Controlled Filter Stage",
              ]
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "// Filtered Dataset Controlled Filter Stage"
      },
      {
        id = "stage-cipkldha"
        input = [
          {
            datasetId   = local.nginx_ingress_metrics
            datasetPath = null
            inputName   = "nginx_plus/Nginx Ingress Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "ingress"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "pod"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "service"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "node"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility    = {}
            columnWidths = {
              upstream = 1076
            }
            containerWidth               = 1146
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 1
          inputList = [
            {
              datasetId   = local.nginx_ingress_metrics
              inputName   = "nginx_plus/Nginx Ingress Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "ingress"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-nct5ckku"
            },
            {
              inputName   = "pod"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-escdjagk"
            },
            {
              inputName   = "service"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-umv7d0i4"
            },
            {
              inputName   = "node"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-rg4fpj8r"
            },
          ]
          label = "Metrics - Data"
          managers = [
            {
              id                     = "q2f66p5w"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindStats",
              "ResultKindData",
              "ResultKindSchema",
              "ResultKindProgress",
            ]
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  labels = "count"
                  metric = "count"
                  state  = "count"
                  status = "count"
                  value  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-4bymcmbt"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "nginx_plus/Nginx Ingress Metrics"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-yq7bfy6r"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  labels = "count"
                  metric = "count"
                  state  = "count"
                  status = "count"
                  value  = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-b4py3b4g"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-c30u9dzl"
              index    = 1
              isPinned = false
              opal = [
                "exists ingress=@ingress.name, namespace=@ingress.namespace, clusterUid=@ingress.clusterUid",
                "exists upstream_pod=@pod.name, namespace=@pod.namespace, clusterUid=@pod.clusterUid",
                "exists upstream_node=@node.name, clusterUid=@node.clusterUid",
                "exists upstream_service=@service.name, namespace=@service.namespace, clusterUid=@service.clusterUid",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists ingress=@ingress.name, namespace=@ingress.namespace, clusterUid=@ingress.clusterUid
                    exists upstream_pod=@pod.name, namespace=@pod.namespace, clusterUid=@pod.clusterUid
                    exists upstream_node=@node.name, clusterUid=@node.clusterUid
                    exists upstream_service=@service.name, namespace=@service.namespace, clusterUid=@service.clusterUid
                EOT
      },
      {
        id = "stage-8jgoesqh"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "ingress"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1100
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 2
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "Request Count by Ingress"
          managers = [
            {
              id                     = "9ewpzcaz"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "905w90kx"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "ingress",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "clusterUid",
                        "namespace",
                      ],
                      [
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_lifb2ut6"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  host_draft    = "count"
                  labels        = "count"
                  metric        = "count"
                  state         = "count"
                  status        = "count"
                  upstream      = "count"
                  upstream_port = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-a4f8h7in"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-7gq5251d"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-bd8jz2ju"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  columnId    = "metric"
                  columnType  = "string"
                  filterVerb  = "filter"
                  isExcluding = false
                  values = [
                    "nginx_ingress_nginxplus_upstream_server_requests",
                  ]
                }
                summary = null
                type    = "FilterValues"
              }
              columnStatsTable = {
                columnFunctions = {
                  host_draft    = "count"
                  labels        = "count"
                  metric        = "count"
                  state         = "count"
                  status        = "count"
                  upstream      = "count"
                  upstream_port = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-hj6e4eyt"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = "metric"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-fkyjlywu"
              index    = 2
              isPinned = true
              opal = [
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_requests\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "ingress",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "clusterUid",
                                  "namespace",
                                ],
                                [
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_lifb2ut6"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "ingress",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "clusterUid",
                            "namespace",
                          ],
                          [
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-s15wc6cc"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_lifb2ut6"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-vo1y7hqq"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-s15wc6cc",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-gwhffbhh"
              index    = 3
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_lifb2ut6:rate(value), group_by(ingress, namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    filter metric = "nginx_ingress_nginxplus_upstream_server_requests"
                    timechart options(empty_bins:true), value_rate_lifb2ut6:rate(value), group_by(ingress, namespace, clusterUid)
                EOT
      },
      {
        id = "stage-5xw15l4b"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "ingress"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1100
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 3
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "Response Time by Ingress"
          managers = [
            {
              id                     = "f8y88whl"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "hng95hkw"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "ingress",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "clusterUid",
                        "namespace",
                      ],
                      [
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_avg_qfgkr2co"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  host_draft    = "count"
                  labels        = "count"
                  metric        = "count"
                  state         = "count"
                  status        = "count"
                  upstream      = "count"
                  upstream_port = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-sl0mwnlq"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-5gk274rn"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  host_draft    = "count"
                  labels        = "count"
                  metric        = "count"
                  state         = "count"
                  status        = "count"
                  upstream      = "count"
                  upstream_port = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-09ytwapm"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-4d73fg6m"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_response_time\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "ingress",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "clusterUid",
                                  "namespace",
                                ],
                                [
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_avg_qfgkr2co"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "ingress",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "clusterUid",
                            "namespace",
                          ],
                          [
                            "clusterUid",
                          ],
                        ]
                        id              = "datasetQueryExpression-yryqjjhe"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "value_avg_qfgkr2co"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-rhgqmy1f"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-yryqjjhe",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-k44uqvzc"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_avg_qfgkr2co:avg(value), group_by(ingress, namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_response_time"
                    timechart options(empty_bins:true), value_avg_qfgkr2co:avg(value), group_by(ingress, namespace, clusterUid)
                EOT
      },
      {
        id = "stage-ybg8wvut"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "ingress"
              "2" = "namespace"
              "3" = "clusterUid"
              "4" = "_c_valid_from"
              "5" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1100
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 4
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "1xx, 2xx, 3xx by Ingress"
          managers = [
            {
              id                     = "w5ajnez5"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "rqrjqjwv"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "code",
                      [
                        "ingress",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "clusterUid",
                        "namespace",
                      ],
                      [
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_odyee4co"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  host_draft    = "count"
                  labels        = "count"
                  metric        = "count"
                  state         = "count"
                  status        = "count"
                  upstream      = "count"
                  upstream_port = "count"
                  value         = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-gr24piib"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-7mtehfr7"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-ouolrrtp"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter in(code, \"1xx\", \"2xx\", \"3xx\")",
                "// filter in(code, \"2xx\")",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "code",
                                [
                                  "ingress",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "clusterUid",
                                  "namespace",
                                ],
                                [
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_odyee4co"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "code",
                          [
                            "ingress",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "clusterUid",
                            "namespace",
                          ],
                          [
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-jid1szd1"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_odyee4co"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-5n1ddt4o"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-jid1szd1",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-733tmhas"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_odyee4co:rate(value), group_by(code, ingress, namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                            // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                            filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                            make_col code:string(labels.code)
                            filter in(code, "1xx", "2xx", "3xx")
                        EOT
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter in(code, "1xx", "2xx", "3xx")
                    // filter in(code, "2xx")
                    
                    timechart options(empty_bins:true), value_rate_odyee4co:rate(value), group_by(code, ingress, namespace, clusterUid)
                EOT
      },
      {
        id = "stage-6ievb0il"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "ingress"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 5
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "4xx by Ingress"
          managers = [
            {
              id                     = "m64tiatf"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "x20www90"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "ingress",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "clusterUid",
                        "namespace",
                      ],
                      [
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_elwzoa6c"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-3bw88i63"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-saquv0e4"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"4xx\"",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "ingress",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "clusterUid",
                                  "namespace",
                                ],
                                [
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_elwzoa6c"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "ingress",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "clusterUid",
                            "namespace",
                          ],
                          [
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-q60m67ns"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_elwzoa6c"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-iwacyp35"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-q60m67ns",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-gjkr7tna"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_elwzoa6c:rate(value), group_by(ingress, namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "4xx"
                    
                    timechart options(empty_bins:true), value_rate_elwzoa6c:rate(value), group_by(ingress, namespace, clusterUid)
                EOT
      },
      {
        id = "stage-jxo59spw"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "ingress"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 6
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "5xx by Ingress"
          managers = [
            {
              id                     = "b4g1d674"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "dt78vaid"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "ingress",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "clusterUid",
                        "namespace",
                      ],
                      [
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_i3zwuy7p"
                  }
                  topK = {
                    k     = 25
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-927cu8sk"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-r8l8vpeg"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"5xx\"",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "ingress",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "clusterUid",
                                  "namespace",
                                ],
                                [
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_i3zwuy7p"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "ingress",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "clusterUid",
                            "namespace",
                          ],
                          [
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-4luruv7s"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_i3zwuy7p"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-rjwhbcu2"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-4luruv7s",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-6022333w"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_i3zwuy7p:rate(value), group_by(ingress, namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "5xx"
                    
                    timechart options(empty_bins:true), value_rate_i3zwuy7p:rate(value), group_by(ingress, namespace, clusterUid)
                EOT
      },
      {
        id = "stage-3vuai1c8"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "upstream_service"
              "2" = "namespace"
              "3" = "clusterUid"
              "4" = "upstream_pod"
              "5" = "upstream_namespace"
              "6" = "_c_valid_from"
              "7" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 7
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "1xx, 2xx, 3xx by Upstream"
          managers = [
            {
              id                     = "6hm6prmw"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "g9a79kro"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "code",
                      [
                        "upstream_service",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "upstream_pod",
                        "upstream_namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_vjyxeis7"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
            {
              id         = "bdep39y3"
              isDisabled = false
              type       = "JsonTree"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-kb93ygp3"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-h7iks91w"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter in(code, \"1xx\", \"2xx\", \"3xx\")",
                "// filter in(code, \"2xx\")",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                "code",
                                [
                                  "upstream_service",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "upstream_pod",
                                  "upstream_namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_vjyxeis7"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          "code",
                          [
                            "upstream_service",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "upstream_pod",
                            "upstream_namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-x34r7i5f"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_vjyxeis7"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-yo3j9vs7"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-x34r7i5f",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-393i9eq3"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_vjyxeis7:rate(value), group_by(code, upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                            // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                            filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                            make_col code:string(labels.code)
                            filter in(code, "1xx", "2xx", "3xx")
                        EOT
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter in(code, "1xx", "2xx", "3xx")
                    // filter in(code, "2xx")
                    
                    timechart options(empty_bins:true), value_rate_vjyxeis7:rate(value), group_by(code, upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)
                EOT
      },
      {
        id = "stage-5hhm7qxh"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_service"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "upstream_pod"
              "4" = "upstream_namespace"
              "5" = "_c_valid_from"
              "6" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 8
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "4xx by Upstream"
          managers = [
            {
              id                     = "xiakciwq"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "d9fmhie7"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_service",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "upstream_pod",
                        "upstream_namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_bqzz1qcc"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-nd9f2tpt"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-uy7howny"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"4xx\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_service",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "upstream_pod",
                                  "upstream_namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_bqzz1qcc"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_service",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "upstream_pod",
                            "upstream_namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-x2odz06a"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_bqzz1qcc"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-a795j6wa"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-x2odz06a",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-mrg1jwum"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_bqzz1qcc:rate(value), group_by(upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "4xx" 
                    
                    timechart options(empty_bins:true), value_rate_bqzz1qcc:rate(value), group_by(upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)
                EOT
      },
      {
        id = "stage-rmayqsun"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_service"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "upstream_pod"
              "4" = "upstream_namespace"
              "5" = "_c_valid_from"
              "6" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 9
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "5xx by Upstream"
          managers = [
            {
              id                     = "oftab6i2"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "w9wb2sn8"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_service",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "upstream_pod",
                        "upstream_namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_hdrwyfxe"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-fia4gdvd"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-iuy7f7yi"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"5xx\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_service",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "upstream_pod",
                                  "upstream_namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_hdrwyfxe"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_service",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "upstream_pod",
                            "upstream_namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-vroaxqhv"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_hdrwyfxe"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-u0uq1pgm"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-vroaxqhv",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-mu58a2x5"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_hdrwyfxe:rate(value), group_by(upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "5xx" 
                    
                    timechart options(empty_bins:true), value_rate_hdrwyfxe:rate(value), group_by(upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)
                EOT
      },
      {
        id = "stage-uqvpljgj"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_service"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "upstream_pod"
              "4" = "upstream_namespace"
              "5" = "_c_valid_from"
              "6" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 10
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "Request Count by Upstream"
          managers = [
            {
              id                     = "3dvy17fn"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "mrmu7f7z"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    bounds = {
                      start = 0
                    }
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_service",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "upstream_pod",
                        "upstream_namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_oe096hf8"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-nfzwvorl"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-fomrilmz"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_requests\" ",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              bounds = {
                                start = 0
                              }
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_service",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "upstream_pod",
                                  "upstream_namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_oe096hf8"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_service",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "upstream_pod",
                            "upstream_namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-a5ttx45h"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_oe096hf8"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-bvifd5wm"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-a5ttx45h",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-euxfupk6"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_oe096hf8:rate(value), group_by(upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    filter metric = "nginx_ingress_nginxplus_upstream_server_requests" 
                    timechart options(empty_bins:true), value_rate_oe096hf8:rate(value), group_by(upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)
                EOT
      },
      {
        id = "stage-c9dgo5cl"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_service"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "upstream_pod"
              "4" = "upstream_namespace"
              "5" = "_c_valid_from"
              "6" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 11
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "Response Time by Upstream"
          managers = [
            {
              id                     = "q3w9o2aa"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "riuexjwb"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_service",
                        "namespace",
                        "clusterUid",
                      ],
                      [
                        "upstream_pod",
                        "upstream_namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_avg_8mio67de"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-cqwtx8sq"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-r2950p6y"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_response_time\" ",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "milliseconds"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_service",
                                  "namespace",
                                  "clusterUid",
                                ],
                                [
                                  "upstream_pod",
                                  "upstream_namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_avg_8mio67de"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_service",
                            "namespace",
                            "clusterUid",
                          ],
                          [
                            "upstream_pod",
                            "upstream_namespace",
                            "clusterUid",
                          ],
                        ]
                        id              = "datasetQueryExpression-tduqas8l"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "value_avg_8mio67de"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-3ak6rxv1"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-tduqas8l",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-fqqz0uj8"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_avg_8mio67de:avg(value), group_by(upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_response_time" 
                    timechart options(empty_bins:true), value_avg_8mio67de:avg(value), group_by(upstream_service, namespace, clusterUid, upstream_pod, upstream_namespace)
                EOT
      },
      {
        id = "stage-xsaqgstd"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
          {
            datasetId   = local.pod
            datasetPath = null
            inputName   = "pod"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 12
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
            {
              datasetId   = local.pod
              inputName   = "pod"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "4xx by Upstream Node"
          managers = [
            {
              id                     = "ocyilgo5"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "3kczxceq"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_node",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_9wzf56fx"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-6i1pbnpp"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-50k59qf9"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"4xx\" ",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_node",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_9wzf56fx"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_node",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-l0b2zrnj"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_9wzf56fx"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-lcx95w4s"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-l0b2zrnj",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-dne2qbbx"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_9wzf56fx:rate(value), group_by(upstream_node, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "4xx" 
                    timechart options(empty_bins:true), value_rate_9wzf56fx:rate(value), group_by(upstream_node, clusterUid)
                EOT
      },
      {
        id = "stage-y5gv8qdv"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_service"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 13
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "4xx by Upstream Service"
          managers = [
            {
              id                     = "98tgird1"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "qmew6wby"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_service",
                        "namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_c99xt7ye"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-0746d34f"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-nggeye4n"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"4xx\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_service",
                                  "namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_c99xt7ye"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_service",
                            "namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-ijmkbolk"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_c99xt7ye"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-g2wafli9"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-ijmkbolk",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-t5rsj3ix"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_c99xt7ye:rate(value), group_by(upstream_service, namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "4xx" 
                    
                    timechart options(empty_bins:true), value_rate_c99xt7ye:rate(value), group_by(upstream_service, namespace, clusterUid)
                EOT
      },
      {
        id = "stage-aam8l83x"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_pod"
              "1" = "upstream_namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 14
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "4xx by Upstream Pod"
          managers = [
            {
              id                     = "dwxx9tol"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "8x4scf4i"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_pod",
                        "upstream_namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_4opz0h8b"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-52jcpv2l"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-nzzqnm87"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"4xx\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_pod",
                                  "upstream_namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_4opz0h8b"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_pod",
                            "upstream_namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-vy7o3d7y"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_4opz0h8b"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-nsokwmcn"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-vy7o3d7y",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-3lgk3h7x"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_4opz0h8b:rate(value), group_by(upstream_pod, upstream_namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "4xx" 
                    
                    timechart options(empty_bins:true), value_rate_4opz0h8b:rate(value), group_by(upstream_pod, upstream_namespace, clusterUid)
                EOT
      },
      {
        id = "stage-ioj9rs5h"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
          {
            datasetId   = local.pod
            datasetPath = null
            inputName   = "pod"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 15
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
            {
              datasetId   = local.pod
              inputName   = "pod"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "5xx by Upstream Node"
          managers = [
            {
              id                     = "qpcjvujx"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "bri51p0p"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_node",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_74v9htob"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-lsy1ldbj"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-pn4vplbf"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"5xx\" ",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_node",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_74v9htob"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_node",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-cyrwh4fc"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_74v9htob"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-kesrbnn2"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-cyrwh4fc",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-ysgi8l0x"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_74v9htob:rate(value), group_by(upstream_node, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "5xx" 
                    timechart options(empty_bins:true), value_rate_74v9htob:rate(value), group_by(upstream_node, clusterUid)
                EOT
      },
      {
        id = "stage-bogmpeax"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_service"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 16
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "5xx by Upstream Service"
          managers = [
            {
              id                     = "fuaqi1m0"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "85k7st4b"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_service",
                        "namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_endoqgad"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-d1cwvkhq"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-8o67k807"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"5xx\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_service",
                                  "namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_endoqgad"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_service",
                            "namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-dk79kd56"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_endoqgad"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-97hfh45t"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-dk79kd56",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-f6gauycl"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_endoqgad:rate(value), group_by(upstream_service, namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "5xx" 
                    
                    timechart options(empty_bins:true), value_rate_endoqgad:rate(value), group_by(upstream_service, namespace, clusterUid)
                EOT
      },
      {
        id = "stage-ovs2fbpq"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_pod"
              "1" = "upstream_namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 17
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "5xx by Upstream Pod"
          managers = [
            {
              id                     = "ugmzout5"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "wt1uxy4t"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_pod",
                        "upstream_namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_18xxmfcs"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-o7rthj63"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-6rmfkqdl"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_responses\"",
                "make_col code:string(labels.code)",
                "filter code = \"5xx\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_pod",
                                  "upstream_namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_18xxmfcs"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_pod",
                            "upstream_namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-jd777s05"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_18xxmfcs"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-f1mizt1h"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-jd777s05",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-nctusd3c"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_18xxmfcs:rate(value), group_by(upstream_pod, upstream_namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_responses"
                    make_col code:string(labels.code)
                    filter code = "5xx" 
                    
                    timechart options(empty_bins:true), value_rate_18xxmfcs:rate(value), group_by(upstream_pod, upstream_namespace, clusterUid)
                EOT
      },
      {
        id = "stage-ovcdfnll"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
          {
            datasetId   = local.pod
            datasetPath = null
            inputName   = "pod"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1146
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 18
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
            {
              datasetId   = local.pod
              inputName   = "pod"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Request Count by Upstream Node"
          managers = [
            {
              id                     = "01iew66t"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "g0ix8our"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_node",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_agsvsmhw"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-87ektgvm"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-q0vv090c"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-d5sqlamg"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_requests\" ",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_node",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_agsvsmhw"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_node",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-gx3kzxy4"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_agsvsmhw"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-wlf2dszv"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-gx3kzxy4",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-14nv3bsu"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_agsvsmhw:rate(value), group_by(upstream_node, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    filter metric = "nginx_ingress_nginxplus_upstream_server_requests" 
                    timechart options(empty_bins:true), value_rate_agsvsmhw:rate(value), group_by(upstream_node, clusterUid)
                EOT
      },
      {
        id = "stage-m13d21kk"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
          {
            datasetId   = local.pod
            datasetPath = null
            inputName   = "pod"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_service"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1146
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 19
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
            {
              datasetId   = local.pod
              inputName   = "pod"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Request Count by Upstream Service"
          managers = [
            {
              id                     = "60x93xog"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "gmpnk3i6"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_service",
                        "namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_qgzm8jix"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-usq7o1i2"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-m6sqhlr1"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-bg0u695t"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_requests\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_service",
                                  "namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_qgzm8jix"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_service",
                            "namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-egboq9r7"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_qgzm8jix"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-ozdipsli"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-egboq9r7",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-x5ggn05a"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_qgzm8jix:rate(value), group_by(upstream_service, namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    filter metric = "nginx_ingress_nginxplus_upstream_server_requests" 
                    
                    timechart options(empty_bins:true), value_rate_qgzm8jix:rate(value), group_by(upstream_service, namespace, clusterUid)
                EOT
      },
      {
        id = "stage-htzlizf1"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
          {
            datasetId   = local.pod
            datasetPath = null
            inputName   = "pod"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_pod"
              "1" = "upstream_namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1146
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 20
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
            {
              datasetId   = local.pod
              inputName   = "pod"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Request Count by Upstream Pod"
          managers = [
            {
              id                     = "l4btg710"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "zxzt2if4"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_pod",
                        "upstream_namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "rate"
                      fnArgs     = []
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_rate_ajm31s6o"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-zjocrid9"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-p7tqoj88"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-955s3m6w"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_requests\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_pod",
                                  "upstream_namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "rate"
                                fnArgs     = []
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_rate_ajm31s6o"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_pod",
                            "upstream_namespace",
                            "clusterUid",
                          ],
                        ]
                        id                  = "datasetQueryExpression-006x74w6"
                        lookupActions       = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "rate"
                        summaryFunctionArgs = []
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "value_rate_ajm31s6o"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-zbeouop6"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-006x74w6",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-jz78gqg9"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_rate_ajm31s6o:rate(value), group_by(upstream_pod, upstream_namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    filter metric = "nginx_ingress_nginxplus_upstream_server_requests" 
                    
                    timechart options(empty_bins:true), value_rate_ajm31s6o:rate(value), group_by(upstream_pod, upstream_namespace, clusterUid)
                EOT
      },
      {
        id = "stage-q6pewe16"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
          {
            datasetId   = local.pod
            datasetPath = null
            inputName   = "pod"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1146
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 21
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
            {
              datasetId   = local.pod
              inputName   = "pod"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Response Time by Upstream Node"
          managers = [
            {
              id                     = "g25hzj4i"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "7q1jwqbm"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_node",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_avg_2l8bigrv"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-dhw2lpzf"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-poi24nnb"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-yv5vz7nq"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_response_time\" ",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "milliseconds"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_node",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_avg_2l8bigrv"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_node",
                            "clusterUid",
                          ],
                        ]
                        id              = "datasetQueryExpression-bamfas6e"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "value_avg_2l8bigrv"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-dg2z0jbz"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-bamfas6e",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-4idnxjvz"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_avg_2l8bigrv:avg(value), group_by(upstream_node, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_response_time" 
                    timechart options(empty_bins:true), value_avg_2l8bigrv:avg(value), group_by(upstream_node, clusterUid)
                EOT
      },
      {
        id = "stage-lhfig12b"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
          {
            datasetId   = local.pod
            datasetPath = null
            inputName   = "pod"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_service"
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1146
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 22
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
            {
              datasetId   = local.pod
              inputName   = "pod"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Response Time by Upstream Service"
          managers = [
            {
              id                     = "i5u1rn3l"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "qqji4yov"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_service",
                        "namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_avg_ibgnk435"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
            {
              id         = "myyzsh13"
              isDisabled = false
              type       = "JsonTree"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-0c8jzypn"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-m9fwklig"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-gjs1pv3s"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_response_time\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "milliseconds"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_service",
                                  "namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_avg_ibgnk435"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_service",
                            "namespace",
                            "clusterUid",
                          ],
                        ]
                        id              = "datasetQueryExpression-txjne0ha"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "value_avg_ibgnk435"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-a9qgj2h5"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-txjne0ha",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-9r3rzxvr"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_avg_ibgnk435:avg(value), group_by(upstream_service, namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_response_time" 
                    
                    timechart options(empty_bins:true), value_avg_ibgnk435:avg(value), group_by(upstream_service, namespace, clusterUid)
                EOT
      },
      {
        id = "stage-ggmmyyvm"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
          {
            datasetId   = local.pod
            datasetPath = null
            inputName   = "pod"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "upstream_pod"
              "1" = "upstream_namespace"
              "2" = "clusterUid"
              "3" = "_c_valid_from"
              "4" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1146
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 23
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
            {
              datasetId   = local.pod
              inputName   = "pod"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "Response Time by Upstream Pod"
          managers = [
            {
              id                     = "sd1zowqa"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "mc1b00j0"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "milliseconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "upstream_pod",
                        "upstream_namespace",
                        "clusterUid",
                      ],
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "value_avg_t4whg1l9"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-825df996"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {}
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-bvs0ma95"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-7lti7by3"
              index    = 1
              isPinned = false
              opal = [
                "// filter starts_with(metric, \"nginx_ingress_nginxplus_upstream_server_\")",
                "// make_col metric:split_part(metric, \"nginx_ingress_nginxplus_upstream_server_\", 2)",
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_response_time\" ",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "value"
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "milliseconds"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "upstream_pod",
                                  "upstream_namespace",
                                  "clusterUid",
                                ],
                              ]
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "value_avg_t4whg1l9"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "upstream_pod",
                            "upstream_namespace",
                            "clusterUid",
                          ],
                        ]
                        id              = "datasetQueryExpression-uac4xv4e"
                        lookupActions   = []
                        summarizeVerb   = "statsby"
                        summaryFunction = "avg"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "value_avg_t4whg1l9"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-7ysuuec6"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-uac4xv4e",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-5ifhdln8"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), value_avg_t4whg1l9:avg(value), group_by(upstream_pod, upstream_namespace, clusterUid)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // filter starts_with(metric, "nginx_ingress_nginxplus_upstream_server_")
                    // make_col metric:split_part(metric, "nginx_ingress_nginxplus_upstream_server_", 2)
                    filter metric = "nginx_ingress_nginxplus_upstream_server_response_time" 
                    
                    timechart options(empty_bins:true), value_avg_t4whg1l9:avg(value), group_by(upstream_pod, upstream_namespace, clusterUid)
                EOT
      },
      {
        id = "stage-20gokt3j"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Metrics - Data_-cipk"
            inputRole   = "Data"
            stageId     = "stage-cipkldha"
          },
        ]
        layout = {
          appearance = "COLLAPSED"
          dataTableViewState = {
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility    = {}
            columnWidths = {
              upstream = 1076
            }
            containerWidth               = 1146
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 24
          inputList = [
            {
              inputName   = "Metrics - Data_-cipk"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-cipkldha"
            },
          ]
          label = "Upstream Assets"
          managers = [
            {
              id                     = "xw3wubfz"
              isDisabled             = false
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  labels          = "count"
                  metric          = "count"
                  state           = "count"
                  status          = "count"
                  upstream        = "count"
                  upstream_pod_ip = "count"
                  upstream_port   = "count"
                  value           = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-2dleeaos"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "Metrics - Data_-cipk"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-h6pi9sr0"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-diwijt8i"
              index    = 1
              isPinned = false
              opal = [
                "filter metric = \"nginx_ingress_nginxplus_upstream_server_requests\"",
                "statsby group_by(upstream, upstream_node, upstream_service, upstream_pod, upstream_namespace)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter metric = "nginx_ingress_nginxplus_upstream_server_requests"
                    statsby group_by(upstream, upstream_node, upstream_service, upstream_pod, upstream_namespace)
                EOT
      },
      {
        id = "stage-qme685l5"
        input = [
          {
            datasetId   = local.api_update
            datasetPath = null
            inputName   = "kubernetes/API Update"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "upstream_assets"
            inputRole   = "Data"
            stageId     = "stage-20gokt3j"
          },
          {
            datasetId   = local.object
            datasetPath = null
            inputName   = "object"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight     = false
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility    = {}
            columnWidths = {
              object_name      = 326
              old_config_value = 288
            }
            containerWidth               = 1100
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = "old_object"
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 270
            tableView                  = "TABULAR"
          }
          index = 25
          inputList = [
            {
              datasetId   = local.api_update
              inputName   = "kubernetes/API Update"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "upstream_assets"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-20gokt3j"
            },
            {
              datasetId   = local.object
              inputName   = "object"
              inputRole   = "Data"
              isUserInput = true
            },
          ]
          label = "API Updates"
          managers = [
            {
              id                     = "tl9qq0u8"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindStats",
              "ResultKindData",
              "ResultKindSchema",
              "ResultKindProgress",
            ]
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  apiVersion      = "count"
                  kind            = "count"
                  name            = "count"
                  object          = "count"
                  resourceVersion = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-bzolm2an"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "kubernetes/API Update"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-b89cmom2"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  apiVersion      = "count"
                  kind            = "count"
                  name            = "count"
                  object          = "count"
                  resourceVersion = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-vnhhri7w"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-5agn4oy2"
              index    = 1
              isPinned = false
              opal = [
                "// exists namespace=@upstream_assets.upstream_namespace",
                "exists name=@upstream_assets.upstream_node ",
                "\tor name=@upstream_assets.upstream_service ",
                " \tor name=@upstream_assets.upstream_pod",
                "lookup uid=@object.uid,",
                "\tobject_kind:@object.kind",
                "// filter kind=$api_update_kind or $api_update_kind=string_null()",
                "filter in($api_update_kind, \"\", kind)",
                "// filter kind = \"Pod\"",
                "/*",
                "make_col",
                " \told_object:window(lag(object, 1), group_by(uid))",
                "flatten_single object",
                "rename_col ",
                "\tconfig_type:_c_object_path,",
                " \tconfig_value:_c_object_value",
                "filter not in(config_type, \"apiVersion\", \"kind\")",
                "make_col",
                "\told_config_value:get_field(old_object, config_type)",
                "filter config_value != old_config_value or is_null(old_config_value)",
                "*/",
                "/*",
                "flatten_single config_value",
                "rename_col",
                "\tconfig_name:_c_config_value_path,",
                " \tconfig_value:_c_config_value_value",
                "make_col old_config_value:coalesce(",
                "\tget_field(object(old_config_value), config_name),",
                " \told_config_value)",
                "filter config_value != old_config_value or is_null(old_config_value)",
                "*/",
                "",
                "/*",
                "pick_col",
                "\ttimestamp,",
                " \tname,",
                "  \tobject_kind,",
                "   \tconfig_type,",
                "    config_name,",
                "    config_value,",
                "    old_config_value",
                "*/",
                "// make_col old_value:get_field(old_object, config_type)",
                "// flatten_leaves object",
                "/*",
                "filter not is_null(changes) and changes!=make_object()",
                "flatten_single changes",
                "rename_col change_type:_c_changes_path",
                "make_col",
                "\told_value:_c_changes_value.old,",
                " \tnew_value:_c_changes_value.new",
                "pick_col",
                "\ttimestamp,",
                " \tname, ",
                "  \tclusterUid, ",
                "   \tnamespace,",
                "\tchange_type,",
                " \told_value,",
                "  \tnew_value",
                "*/",
                "",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    // exists namespace=@upstream_assets.upstream_namespace
                    exists name=@upstream_assets.upstream_node 
                    	or name=@upstream_assets.upstream_service 
                     	or name=@upstream_assets.upstream_pod
                    lookup uid=@object.uid,
                    	object_kind:@object.kind
                    // filter kind=$api_update_kind or $api_update_kind=string_null()
                    filter in($api_update_kind, "", kind)
                    // filter kind = "Pod"
                    /*
                    make_col
                     	old_object:window(lag(object, 1), group_by(uid))
                    flatten_single object
                    rename_col 
                    	config_type:_c_object_path,
                     	config_value:_c_object_value
                    filter not in(config_type, "apiVersion", "kind")
                    make_col
                    	old_config_value:get_field(old_object, config_type)
                    filter config_value != old_config_value or is_null(old_config_value)
                    */
                    /*
                    flatten_single config_value
                    rename_col
                    	config_name:_c_config_value_path,
                     	config_value:_c_config_value_value
                    make_col old_config_value:coalesce(
                    	get_field(object(old_config_value), config_name),
                     	old_config_value)
                    filter config_value != old_config_value or is_null(old_config_value)
                    */
                    
                    /*
                    pick_col
                    	timestamp,
                     	name,
                      	object_kind,
                       	config_type,
                        config_name,
                        config_value,
                        old_config_value
                    */
                    // make_col old_value:get_field(old_object, config_type)
                    // flatten_leaves object
                    /*
                    filter not is_null(changes) and changes!=make_object()
                    flatten_single changes
                    rename_col change_type:_c_changes_path
                    make_col
                    	old_value:_c_changes_value.old,
                     	new_value:_c_changes_value.new
                    pick_col
                    	timestamp,
                     	name, 
                      	clusterUid, 
                       	namespace,
                    	change_type,
                     	old_value,
                      	new_value
                    */
                EOT
      },
      {
        id = "stage-vkrqy4eo"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "API Updates_-qme6"
            inputRole   = "Data"
            stageId     = "stage-qme685l5"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = false
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "clusterUid"
              "1" = "_c_valid_from"
              "2" = "_c_valid_to"
              "3" = "namespace"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1100
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 270
            tableView                  = "TABULAR"
          }
          index = 26
          inputList = [
            {
              inputName   = "API Updates_-qme6"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-qme685l5"
            },
          ]
          label = "API Updates"
          managers = [
            {
              id                     = "kjp98mw8"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "gwe22e9q"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    bounds = {
                      start = 0
                    }
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      "object_kind",
                      "name",
                    ]
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "_c_valid_from"
                    y             = "row_count_doml6w9y"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  apiVersion      = "count"
                  kind            = "count"
                  name            = "count"
                  object          = "count"
                  object_kind     = "count"
                  object_name     = "count"
                  resourceVersion = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-evodq3nv"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "API Updates_-qme6"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-6lu5m0sl"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-mz3gzfp5"
              index    = 1
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), row_count_doml6w9y:count(), group_by(object_kind, name)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = "timechart options(empty_bins:true), row_count_doml6w9y:count(), group_by(object_kind, name)"
      },
      {
        id = "stage-72msizl0"
        input = [
          {
            datasetId   = local.pod_update
            datasetPath = null
            inputName   = "kubernetes/Pod Update"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "upstream_assets"
            inputRole   = "Data"
            stageId     = "stage-20gokt3j"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight     = true
            columnFooterHeight  = 0
            columnHeaderHeight  = 29
            columnOrderOverride = {}
            columnVisibility = {
              Cluster   = false
              Namespace = false
            }
            columnWidths                 = {}
            containerWidth               = 1100
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = true
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = "object"
            scrollToRow                  = 1
            selection = {
              cells = {
                object = {
                  "1" = true
                }
              }
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "cell"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 27
          inputList = [
            {
              datasetId   = local.pod_update
              inputName   = "kubernetes/Pod Update"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              inputName   = "upstream_assets"
              inputRole   = "Data"
              isUserInput = true
              stageId     = "stage-20gokt3j"
            },
          ]
          label = "Pod Updates"
          managers = [
            {
              id                     = "t4npwd8x"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindStats",
              "ResultKindData",
              "ResultKindSchema",
              "ResultKindProgress",
            ]
            rollup = {}
          }
          renderType     = "TABLE"
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  cronjobName     = "count"
                  daemonsetName   = "count"
                  deploymentName  = "count"
                  jobName         = "count"
                  object          = "count"
                  podIP           = "count"
                  replicasetName  = "count"
                  statefulsetName = "count"
                  status          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-hgvi69ye"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "kubernetes/Pod Update"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-4smzxsqw"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              columnStatsTable = {
                columnFunctions = {
                  cronjobName     = "count"
                  daemonsetName   = "count"
                  deploymentName  = "count"
                  jobName         = "count"
                  object          = "count"
                  podIP           = "count"
                  replicasetName  = "count"
                  statefulsetName = "count"
                  status          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-25dlbpat"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-ljcbt2bi"
              index    = 1
              isPinned = false
              opal = [
                "exists nodeName=@upstream_assets.upstream_node",
                "\tand name=@upstream_assets.upstream_pod",
                "/*",
                "make_col",
                "\told_status:window(lag(status, 1), group_by(name)),",
                " \told_podIP:window(lag(podIP, 1), group_by(name)),",
                " \told_object:window(lag(object, 1), group_by(name))",
                "make_col",
                "\tchanges:make_object(",
                " \t\tstatus:if(status!=old_status, make_object(old:old_status, new:status), object_null()),",
                " \t\tpodIP:if(podIP!=old_podIP, make_object(old:old_podIP, new:podIP), object_null()),",
                " \t\tobject:if(object!=old_object, make_object(old:old_object, new:object), object_null())",
                "    )",
                "filter not is_null(changes) and changes!=make_object()",
                "flatten_single changes",
                "rename_col change_type:_c_changes_path",
                "make_col",
                "\told_value:_c_changes_value.old,",
                " \tnew_value:_c_changes_value.new",
                "pick_col",
                "\ttimestamp,",
                " \tname, ",
                "  \tclusterUid, ",
                "   \tnamespace,",
                "\tchange_type,",
                " \told_value,",
                "  \tnew_value",
                "*/",
                "// filter podIP = \"10.1.2.217\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists nodeName=@upstream_assets.upstream_node
                    	and name=@upstream_assets.upstream_pod
                    /*
                    make_col
                    	old_status:window(lag(status, 1), group_by(name)),
                     	old_podIP:window(lag(podIP, 1), group_by(name)),
                     	old_object:window(lag(object, 1), group_by(name))
                    make_col
                    	changes:make_object(
                     		status:if(status!=old_status, make_object(old:old_status, new:status), object_null()),
                     		podIP:if(podIP!=old_podIP, make_object(old:old_podIP, new:podIP), object_null()),
                     		object:if(object!=old_object, make_object(old:old_object, new:object), object_null())
                        )
                    filter not is_null(changes) and changes!=make_object()
                    flatten_single changes
                    rename_col change_type:_c_changes_path
                    make_col
                    	old_value:_c_changes_value.old,
                     	new_value:_c_changes_value.new
                    pick_col
                    	timestamp,
                     	name, 
                      	clusterUid, 
                       	namespace,
                    	change_type,
                     	old_value,
                      	new_value
                    */
                    // filter podIP = "10.1.2.217"
                EOT
      },
      {
        id = "stage-sxe33wi6"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "Pod Updates_-72ms"
            inputRole   = "Data"
            stageId     = "stage-72msizl0"
          },
        ]
        layout = {
          appearance = "VISIBLE"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "clusterUid"
              "1" = "namespace"
              "2" = "name"
              "3" = "change_type"
              "4" = "_c_valid_from"
              "5" = "_c_valid_to"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = 1100
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              anchoredCellSelection   = null
              anchoredColumnSelection = null
              anchoredRowSelection    = null
              cells                   = {}
              columnSelectSequence    = []
              columns                 = {}
              highlightState          = {}
              lastCellSelection       = null
              lastColumnSelection     = null
              lastRowSelection        = null
              rows                    = {}
              selectionType           = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 28
          inputList = [
            {
              inputName   = "Pod Updates_-72ms"
              inputRole   = "Data"
              isUserInput = false
              stageId     = "stage-72msizl0"
            },
          ]
          label = "Pod Updates"
          managers = [
            {
              id                     = "2sjo1k3l"
              isDisabled             = true
              isResourceCountEnabled = false
              type                   = "Timescrubber"
            },
            {
              id         = "rexroevd"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType = "SolidFill"
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = false
                  }
                  type                = "bar"
                  xAxisLabelPlacement = "horizontal"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    visible = true
                  }
                }
                source = {
                  table = {
                    groupFields = [
                      [
                        "clusterUid",
                        "namespace",
                        "name",
                      ],
                      "change_type",
                    ]
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    y             = "row_count_y1utxku2"
                  }
                  topK = {
                    k     = 50
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "bar"
              }
            },
            {
              id         = "y5q1seix"
              isDisabled = false
              type       = "JsonTree"
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
            ]
            rollup      = {}
            wantBuckets = 200
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              columnStatsTable = {
                columnFunctions = {
                  cronjobName     = "count"
                  daemonsetName   = "count"
                  deploymentName  = "count"
                  jobName         = "count"
                  object          = "count"
                  podIP           = "count"
                  replicasetName  = "count"
                  statefulsetName = "count"
                  status          = "count"
                }
                datasetQueryId = {
                  ignoreCompress = false
                  queryId        = "q-214j1pdq"
                  resultKinds = [
                    "ResultKindSchema",
                    "ResultKindData",
                  ]
                  tableTypes = [
                    "TABULAR",
                  ]
                }
              }
              customName    = "Input"
              customSummary = "Pod Updates_-72ms"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id                = "step-uw4pwncj"
              index             = 0
              isPinned          = false
              opal              = []
              queryPresentation = {}
              type              = "InputStep"
            },
            {
              customSummary = ""
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-psmg8emh"
              index    = 1
              isPinned = false
              opal = [
                "make_col label:\"pod updates\"",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
            {
              action = {
                params = {
                  expressionList = {
                    expressions = [
                      {
                        autoResolution = true
                        columnId       = "***row***"
                        dataVis = {
                          config = {
                            areaFillType = "SolidFill"
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = false
                            }
                            type                = "bar"
                            xAxisLabelPlacement = "horizontal"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              groupFields = [
                                [
                                  "clusterUid",
                                  "namespace",
                                  "name",
                                ],
                                "change_type",
                              ]
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                fnArgs     = null
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              y             = "row_count_y1utxku2"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "bar"
                        }
                        filterActions = []
                        groupBy = [
                          [
                            "clusterUid",
                            "namespace",
                            "name",
                          ],
                          "change_type",
                        ]
                        id                  = "datasetQueryExpression-poq8fdj4"
                        lookupActions       = []
                        primaryKey          = []
                        summarizeVerb       = "statsby"
                        summaryFunction     = "count"
                        summaryFunctionArgs = null
                        summaryMode         = "over-time"
                        type                = "datasetQueryExpression"
                        valueColumnId       = "row_count_y1utxku2"
                      },
                    ]
                    multiExpression = {
                      filterActions = []
                      id            = "multiExpression-givh94mk"
                      isCollapsed   = false
                      lookupActions = []
                      type          = "multiExpression"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-poq8fdj4",
                    ]
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-afbo2n3q"
              index    = 2
              isPinned = false
              opal = [
                "timechart options(empty_bins:true), row_count_y1utxku2:count(), group_by(clusterUid, namespace, name, change_type)",
              ]
              queryPresentation = {}
              type              = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = <<-EOT
                            make_col label:"pod updates"
                            timechart options(empty_bins:true), row_count_y1utxku2:count(), group_by(clusterUid, namespace, name, change_type)
                        EOT
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    make_col label:"pod updates"
                    timechart options(empty_bins:true), row_count_y1utxku2:count(), group_by(clusterUid, namespace, name, change_type)
                EOT
      },
      {
        id = "stage-67pmrvox"
        input = [
          {
            datasetId   = local.pod
            datasetPath = null
            inputName   = "kubernetes/Pod"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "0" = "name"
              "1" = "namespace"
              "2" = "uid"
              "3" = "clusterUid"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 29
          inputList = [
            {
              datasetId   = local.pod
              inputName   = "kubernetes/Pod"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          managers        = []
          pipelineComment = "Filtered Dataset Controlled Filter Stage"
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            linkify     = true
            progressive = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindStats",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "kubernetes/Pod"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-ig2gayd5"
              index    = 0
              isPinned = false
              opal = [
                "// Filtered Dataset Controlled Filter Stage",
              ]
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "// Filtered Dataset Controlled Filter Stage"
      },
      {
        id = "stage-jzr2w1hh"
        input = [
          {
            datasetId   = local.service
            datasetPath = null
            inputName   = "kubernetes/Service"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "namespace"
              "2" = "clusterUid"
              "3" = "Valid From"
              "4" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 30
          inputList = [
            {
              datasetId   = local.service
              inputName   = "kubernetes/Service"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          managers        = []
          pipelineComment = "Filtered Dataset Controlled Filter Stage"
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            linkify     = true
            progressive = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindStats",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "kubernetes/Service"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-s6u5rapt"
              index    = 0
              isPinned = false
              opal = [
                "// Filtered Dataset Controlled Filter Stage",
              ]
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "// Filtered Dataset Controlled Filter Stage"
      },
      {
        id = "stage-f4g26tk5"
        input = [
          {
            datasetId   = local.node
            datasetPath = null
            inputName   = "kubernetes/Node"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          appearance = "HIDDEN"
          dataTableViewState = {
            autoTableHeight    = true
            columnFooterHeight = 0
            columnHeaderHeight = 29
            columnOrderOverride = {
              "1" = "clusterUid"
              "2" = "Valid From"
              "3" = "Valid To"
            }
            columnVisibility             = {}
            columnWidths                 = {}
            containerWidth               = null
            contextMenuXCoord            = null
            contextMenuYCoord            = null
            defaultColumnWidth           = 70
            disableFixedLeftColumns      = false
            eventLinkColumnId            = null
            fetchPageSize                = 100
            hasCalculatedColumnWidths    = false
            maxColumnWidth               = 600
            maxMeasuredColumnHeaderWidth = {}
            maxMeasuredColumnWidth       = {}
            maxMeasuredRowHeight         = {}
            minColumnWidth               = 60
            minRowHeight                 = 30
            preserveCellAndRowSelection  = true
            rowHeaderWidth               = 50
            rowHeights                   = {}
            rowSizeIncrement             = 1
            rowSizing                    = "Compact"
            scrollToColumn               = null
            scrollToRow                  = 0
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            summaryColumnOrderOverride = {}
            summaryColumnVisibility    = {}
            tableHeight                = 0
            tableView                  = "TABULAR"
          }
          index = 31
          inputList = [
            {
              datasetId   = local.node
              inputName   = "kubernetes/Node"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          managers        = []
          pipelineComment = "Filtered Dataset Controlled Filter Stage"
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            linkify     = true
            progressive = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindStats",
            ]
            rollup = {}
          }
          selectedStepId = null
          serializable   = true
          steps = [
            {
              customName    = "Input"
              customSummary = "kubernetes/Node"
              datasetQuery  = null
              datasetQueryId = {
                ignoreCompress = false
                queryId        = null
                resultKinds = [
                  "ResultKindSchema",
                  "ResultKindData",
                  "ResultKindStats",
                ]
                tableTypes = [
                  "TABULAR",
                  "SUMMARY",
                ]
              }
              id       = "step-boeee7t0"
              index    = 0
              isPinned = false
              opal = [
                "// Filtered Dataset Controlled Filter Stage",
              ]
              queryPresentation = {}
              type              = "InputStep"
            },
          ]
          type = "table"
          viewModel = {
            consoleValue = null
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "// Filtered Dataset Controlled Filter Stage"
      },
    ]
  )
  workspace = local.workspace
}

