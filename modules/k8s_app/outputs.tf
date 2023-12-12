output "deployment_name" {
  description = "The name of the Kubernetes deployment."
  value       = kubernetes_deployment.hello_world.metadata[0].name
}

output "service_name" {
  description = "The name of the Kubernetes service."
  value       = kubernetes_service.hello_world.metadata[0].name
}

output "service_node_port" {
  description = "The node port assigned to the Kubernetes service."
  value       = kubernetes_service.hello_world.spec[0].port[0].node_port
}
