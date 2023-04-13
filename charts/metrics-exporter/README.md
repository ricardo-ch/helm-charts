# metrics-exporter

![Version: 1.1.0](https://img.shields.io/badge/Version-1.1.0-informational?style=flat-square) ![AppVersion: 0.5](https://img.shields.io/badge/AppVersion-0.5-informational?style=flat-square) ![Release Status](https://github.com/ricardo-ch/helm-charts/workflows/Release%20Charts/badge.svg) [![License](https://img.shields.io/github/license/ricardo-ch/helm-charts)](https://github.com/ricardo-ch/helm-charts/blob/main/LICENSE)

This chart installs [the DBMS agnostic metrics exporter](https://github.com/free/sql_exporter) based on SQL queries.

### How To Install

Simply add this Chart repository to Helm:

```sh
➜ helm repo add ricardo https://ricardo-ch.github.io/helm-charts/
"ricardo" has been added to your repositories
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config | object | `{"sqlexporter":{}}` | Set a exporter configuration |
| extraVolumeMounts | list | `[]` | Configure additional volumeMounts |
| extraVolumes | list | `[]` | Configure additional volumes |
| image.pullPolicy | string | `"IfNotPresent"` | Set an image pull policy |
| image.repository | string | `"githubfree/sql_exporter"` | Set an exporter image |
| image.tag | float | `0.5` | Set an image tag |
| imagePullSecrets | list | `[]` | Set an image pull secrets |
| nodeSelector | object | `{}` | Set a node selector |
| podAnnotations | object | `{"prometheus.io/port":"9399","prometheus.io/scrape":"true"}` | Set a pod annotations |
| podAnnotations."prometheus.io/port" | string | `"9399"` | Set a Prometheus scrape port |
| podAnnotations."prometheus.io/scrape" | string | `"true"` | Set a flag to mark pod for scrapping |
| podSecurityContext | object | `{}` | Set a pod security context |
| replicaCount | int | `1` | Set number of pods |
| resources | object | `{"limits":{"memory":"128Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Set a exporter resources |
| securityContext | object | `{}` | Set a security context |
| service | object | `{"port":80,"type":"ClusterIP"}` | Set a service type and port |

## Source Code

* <https://github.com/ricardo-ch/helm-charts/tree/main/charts/metrics-exporter>
