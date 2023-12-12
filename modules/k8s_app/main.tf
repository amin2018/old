resource "kubernetes_deployment" "hello_world" {
  metadata {
    name = var.deployment_name
    labels = {
      App = "HelloWorld"
    }
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        App = "HelloWorld"
      }
    }

    template {
      metadata {
        labels = {
          App = "HelloWorld"
        }
      }

      spec {
        container {
          image = var.image
          name  = "hello"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "hello_world" {
  metadata {
    name = var.service_name
  }

  spec {
    selector = {
      App = "HelloWorld"
    }

    port {
      port        = 80
      target_port = 80
    }

    type = "NodePort"
  }
}
