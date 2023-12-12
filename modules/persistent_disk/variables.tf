variable "disk_name" {
  description = "The name of the persistent disk."
  type        = string
}

variable "disk_type" {
  description = "The type of the persistent disk (e.g., pd-standard, pd-ssd)."
  type        = string
  default     = "pd-standard"
}

variable "zone" {
  description = "The zone in which the persistent disk will be created."
  type        = string
}

variable "disk_size" {
  description = "The size of the persistent disk in GB."
  type        = number
  default     = 10
}

variable "disk_image" {
  description = "The image to use for the persistent disk."
  type        = string
  default     = "debian-cloud/debian-9"
}
