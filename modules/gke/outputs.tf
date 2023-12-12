output "cluster_name" {
  description = "The name of the GKE cluster."
  value       = google_container_cluster.gke_cluster.name
}

output "cluster_endpoint" {
  description = "The endpoint of the GKE cluster."
  value       = google_container_cluster.gke_cluster.endpoint
}

output "cluster_ca_certificate" {
  description = "The cluster certificate authority data."
  value       = google_container_cluster.gke_cluster.master_auth[0].cluster_ca_certificate
}
