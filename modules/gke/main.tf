resource "google_container_cluster" "gke_cluster" {
  name     = var.cluster_name
  location = var.location

  node_pool {
    name       = "default-pool"
    node_count = var.node_count

    node_config {
      machine_type = var.machine_type
      labels = {
        app = var.node_label
      }
    }
  }
}
