# WordPress Helm Chart

A Helm chart for deploying WordPress on Kubernetes with MariaDB.

## Prerequisites

- Kubernetes 1.19+
- Helm 3.2.0+
- PV provisioner support in the underlying infrastructure

## Installation

```bash
helm install my-release .
```

## Configuration

The following table lists the configurable parameters of the WordPress chart and their default values.

| Parameter | Description | Default |
| --------- | ----------- | ------- |
| `replicaCount` | Number of WordPress replicas | `1` |
| `image.repository` | WordPress image repository | `wordpress` |
| `image.tag` | WordPress image tag | `""` (appVersion from Chart.yaml) |
| `mariadb.auth.database` | Name of the database to create | `wordpress` |
| `wordpress.persistence.enabled` | Enable persistence for WordPress data | `true` |
| `wordpress.persistence.size` | Size of the WordPress data volume | `10Gi` |

Refer to `values.yaml` for the full list of configurable parameters.

## Persistence

The chart provides persistence for:
- MariaDB data
- WordPress uploads, themes, and plugins (`/var/www/html`)

## Gateway API Support

This chart includes optional support for Kubernetes Gateway API via `httpRoute`.
