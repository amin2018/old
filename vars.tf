variable "project_id" {
  description = "The ID of the project in which the resources will be deployed."
  type        = string
}

variable "region" {
  description = "The region in which the resources will be deployed."
  type        = string
  default     = "us-central1"
}
