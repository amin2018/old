variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

variable "location" {
  description = "The location (region or zone) for the GKE cluster."
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the GKE cluster."
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "The machine type of the GKE nodes."
  type        = string
  default     = "e2-medium"
}

variable "node_label" {
  description = "The label to assign to nodes in the cluster."
  type        = string
  default     = "app:test"
}
