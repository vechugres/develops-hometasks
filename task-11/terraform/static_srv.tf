resource "kubernetes_service" "static-site-srv" {
    metadata {
      name = "${local.prefix}-service"
      namespace = kubernetes_namespace.static-site-ns.metadata[0].name
    }
    spec {
      selector = {
        app = var.app_name
      }
      port {
        node_port = var.node_port
        port = var.app_port
        target_port = var.app_port
      }
      type = var.srv_type
    }
}
