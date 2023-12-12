variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The GCP region for deploying resources."
  type        = string
}

variable "zone" {
  description = "The GCP zone for deploying resources."
  type        = string
}

variable "location" {
  description = "The GCP location for deploying resources."
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

variable "vm_name" {
  description = "The name of the VM instance."
  type        = string
}

variable "disk_name" {
  description = "The name of the persistent disk."
  type        = string
}

variable "deployment_name" {
  description = "The name of the Kubernetes deployment."
  type        = string
}

variable "service_name" {
  description = "The name of the Kubernetes service."
  type        = string
}

variable "instance_name" {
  description = "The name of the Cloud SQL instance."
  type        = string
}
