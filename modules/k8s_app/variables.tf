variable "deployment_name" {
  description = "The name of the Kubernetes deployment."
  type        = string
}

variable "service_name" {
  description = "The name of the Kubernetes service."
  type        = string
}

variable "replicas" {
  description = "The number of replicas for the deployment."
  type        = number
  default     = 1
}

variable "image" {
  description = "The Docker image for the deployment."
  type        = string
  default     = "nginx"  # Replace with your Hello World image
}
