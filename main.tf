provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = var.region

  node_pool {
    name       = "default-pool"
    node_count = 1

    node_config {
      machine_type = "e2.micro"

      labels = {
        app = "test"
      }

      disk_size_gb = 10
      disk_type    = "pd-ssd"
    }
  }
}

resource "kubernetes_deployment" "hello_world" {
  metadata {
    name = "hello-world"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "test"
      }
    }

    template {
      metadata {
        labels = {
          app = "test"
        }
      }

      spec {
        container {
          name  = "hello-world"
          image = "gcr.io/google-samples/node-hello:1.0"

          port {
            container_port = 8080
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "hello_world" {
  metadata {
    name = "hello-world"
  }

  spec {
    selector = {
      app = "test"
    }

    port {
      port        = 8080
      target_port = 8080
    }

    type = "NodePort"
  }
}

resource "kubernetes_ingress" "example" {
  metadata {
    name = "example"
  }

  spec {
    rule {
      host = "test.breedingbox.com"

      http {
        path {
          backend {
            service_name = "hello-world"
            service_port = 8080
          }
        }
      }
    }
  }
}

resource "google_sql_database_instance" "default" {
  name             = "sql-instance"
  database_version = "POSTGRES_9_6"

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      ipv4_enabled    = true
      private_network = google_compute_network.default.self_link
    }
  }
}

resource "google_sql_database" "default" {
  name      = "default_db"
  instance  = google_sql_database_instance.default.name
  project   = var.project_id
  charset   = "UTF8"
  collation = "en_US.UTF8"
}
