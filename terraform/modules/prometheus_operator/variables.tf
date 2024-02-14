variable "namespace" {
  description = "The namespace to deploy the application"
  type = string
}

variable "release_name" {
  description = "The name of the release"
  type = string
  default = "kube-prometheus-stack"
}

variable "chart_version" {
  description = "The version of the chart to deploy"
  type = string
  default = "51.9.1"
}

variable "prometheus_operator_repository" {
  description = "The repository to fetch the chart from"
  type = string
  default = "https://prometheus-community.github.io/helm-charts"
}