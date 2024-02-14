output "name" {
  description = "Kubernetes Namespace Name"
  value = kubernetes_namespace.namespace.metadata.0.name
}