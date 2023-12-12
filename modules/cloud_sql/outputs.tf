output "cloud_sql_instance_name" {
  description = "The name of the Cloud SQL instance."
  value       = google_sql_database_instance.cloud_sql_instance.name
}

output "cloud_sql_instance_address" {
  description = "The connection name of the Cloud SQL instance."
  value       = google_sql_database_instance.cloud_sql_instance.connection_name
}
