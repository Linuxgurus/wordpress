# WordPress Terraform Module

This module provides a convenient way to deploy the WordPress Helm chart using Terraform. It handles the Helm release and provides sensible defaults for common configurations like Ingress and TLS.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.0.0 |

## Resources

| Name | Type |
|------|------|
| [helm_release.helm](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert_issuer"></a> [cert\_issuer](#input\_cert\_issuer) | The internal CA to use | `string` | n/a | yes |
| <a name="input_chart"></a> [chart](#input\_chart) | Which helm chart to install | `string` | `"wordpress"` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The host name for the wordpress site | `string` | n/a | yes |
| <a name="input_ingress_class"></a> [ingress\_class](#input\_ingress\_class) | Which ingress class to use for the ingress | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the helm deployment | `string` | `"wordpress"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace for the helm deployment | `string` | `"wordpress"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Which helm repository to use | `string` | `"http://linuxgurus.github.io/wordpress"` | no |

## Outputs

No outputs.

## Usage

```hcl
module "wordpress" {
  source = "./terraform"

  name          = "my-wordpress"
  namespace     = "wordpress"
  hostname      = "wordpress.example.com"
  ingress_class = "nginx"
  cert_issuer   = "letsencrypt-prod"
}
```
