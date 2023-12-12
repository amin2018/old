output "vm_instance_name" {
  description = "The name of the VM instance."
  value       = google_compute_instance.vm_instance.name
}

output "vm_instance_zone" {
  description = "The zone of the VM instance."
  value       = google_compute_instance.vm_instance.zone
}

output "vm_instance_machine_type" {
  description = "The machine type of the VM instance."
  value       = google_compute_instance.vm_instance.machine_type
}
