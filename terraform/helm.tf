resource "helm_release" "helm" {
  name       = var.name
  namespace  = var.namespace
  repository = var.repository
  chart      = var.chart
  values     = [yamlencode(local.helm_values)]
  create_namespace = true 
}
