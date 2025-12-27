locals {
  helm_values = {
    wordpress = {
      serverName = var.hostname
    }
    ingress = {
      enabled   = true
      className = var.ingress_class
      annotations = {
        "cert-manager.io/cluster-issuer"            = var.cert_issuer
        "external-dns.alpha.kubernetes.io/hostname" = var.hostname
      }
      hosts = [
        {
          host = var.hostname
          paths = [
            {
              path     = "/"
              pathType = "Prefix"
            }
          ]
        }
      ]
      tls = [
        {
          secretName = "cert-${replace(var.hostname, ".", "-")}"
          hosts      = [var.hostname]
        }
      ]
    }
  }
}
