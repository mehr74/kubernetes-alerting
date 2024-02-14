resource "helm_release" "kube_prometheus_stack" {
  name            = var.release_name
  namespace       = var.namespace
  repository      = var.prometheus_operator_repository
  chart           = "kube-prometheus-stack"
  version         = var.chart_version
  wait_for_jobs   = true
  max_history     = 10

  values = [templatefile("${path.module}/templates/values.yaml", {})]
}