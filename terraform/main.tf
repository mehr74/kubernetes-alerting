module "monitoring-namespace" {
  source = "./modules/namespace"
  namespace = "monitoring"
}

module "prometheus_operator" {
  source = "./modules/prometheus_operator"

  namespace = module.monitoring-namespace.name
  
  depends_on = [
    module.monitoring-namespace
  ]
}