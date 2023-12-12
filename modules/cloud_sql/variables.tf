variable "instance_name" {
  description = "The name of the Cloud SQL instance."
  type        = string
}

variable "region" {
  description = "The region where the Cloud SQL instance will be created."
  type        = string
}

variable "database_version" {
  description = "The database version for the Cloud SQL instance."
  type        = string
  default     = "MYSQL_5_7"
}

variable "tier" {
  description = "The machine type of the Cloud SQL instance."
  type        = string
  default     = "db-f1-micro"
}

variable "backup_enabled" {
  description = "Indicates if automated backups are enabled for the Cloud SQL instance."
  type        = bool
  default     = true
}

variable "ipv4_enabled" {
  description = "Indicates if the instance should be assigned a public IP address."
  type        = bool
  default     = true
}

variable "private_network" {
  description = "The resource link for the VPC network to which the instance is connected."
  type        = string
  default     = null  # Update this with your VPC network if required
}
