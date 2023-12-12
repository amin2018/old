variable "vm_name" {
  description = "The name of the VM instance."
  type        = string
}

variable "machine_type" {
  description = "The machine type of the VM."
  type        = string
  default     = "e2-micro"
}

variable "zone" {
  description = "The zone in which the VM will be created."
  type        = string
}

variable "boot_disk_image" {
  description = "The image to use for the boot disk."
  type        = string
  default     = "debian-cloud/debian-9"
}
