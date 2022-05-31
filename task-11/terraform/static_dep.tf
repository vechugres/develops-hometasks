resource "kubernetes_namespace" "static-site-ns" {
    metadata {
      name = "${local.prefix}-ns"
    }
}
resource "kubernetes_deployment" "static-site-deployment" {
    metadata {
      name = "${local.prefix}"
      namespace = kubernetes_namespace.static-site-ns.metadata[0].name
      labels = {
        app = var.app_name
      }
    }

    spec {
      replicas = var.replicas_count
      selector {
        match_labels = {
          app = var.app_name
        }
      }
      template {
        metadata {
          labels = {
            app = var.app_name
          }
        }
        spec {
          container {
            image = var.image_name
            name = var.app_name
            image_pull_policy = var.policy
            port {
              container_port = var.app_port
            }
            readiness_probe {
              http_get {
                path = var.probe_path
                port = var.app_port
            }
              initial_delay_seconds = var.id_seconds
              timeout_seconds       = var.t_seconds

          }
            liveness_probe {
              http_get {
                path = var.probe_path
                port = var.app_port
            }
              initial_delay_seconds = var.id_seconds
              timeout_seconds       = var.t_seconds
          }
          }
        }
      }
    }
}
