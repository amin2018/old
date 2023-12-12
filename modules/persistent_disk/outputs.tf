output "persistent_disk_name" {
  description = "The name of the persistent disk."
  value       = google_compute_disk.persistent_disk.name
}

output "persistent_disk_size" {
  description = "The size of the persistent disk."
  value       = google_compute_disk.persistent_disk.size
}

output "persistent_disk_type" {
  description = "The type of the persistent disk."
  value       = google_compute_disk.persistent_disk.type
}

output "persistent_disk_zone" {
  description = "The zone of the persistent disk."
  value       = google_compute_disk.persistent_disk.zone
}
