output "service_endpoint" {
  description = "The endpoint of the Kubernetes service"
  value       = kubernetes_service.hello_world.status.0.load_balancer.0.ingress.0.ip
}

output "sql_connection_name" {
  description = "The connection name of the Cloud SQL instance"
  value       = google_sql_database_instance.default.connection_name
}
