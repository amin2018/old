output "gke_cluster_name" {
  description = "The name of the GKE cluster."
  value       = module.gke.cluster_name
}

output "gke_cluster_endpoint" {
  description = "The endpoint of the GKE cluster."
  value       = module.gke.cluster_endpoint
}

output "gke_cluster_ca_certificate" {
  description = "The cluster certificate authority data."
  value       = module.gke.cluster_ca_certificate
}

output "vm_instance_name" {
  description = "The name of the VM instance."
  value       = module.vm.vm_instance_name
}

output "persistent_disk_name" {
  description = "The name of the persistent disk."
  value       = module.persistent_disk.persistent_disk_name
}

output "k8s_app_deployment_name" {
  description = "The name of the Kubernetes deployment."
  value       = module.k8s_app.deployment_name
}

output "cloud_sql_instance_name" {
  description = "The name of the Cloud SQL instance."
  value       = module.cloud_sql.cloud_sql_instance_name
}
