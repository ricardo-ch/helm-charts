# bunnycdn-exporter

![Version: 1.2.6](https://img.shields.io/badge/Version-1.2.6-informational?style=flat-square) ![AppVersion: 0.2.3](https://img.shields.io/badge/AppVersion-0.2.3-informational?style=flat-square) ![Release Status](https://github.com/ricardo-ch/helm-charts/workflows/Release%20Charts/badge.svg) [![License](https://img.shields.io/github/license/ricardo-ch/helm-charts)](https://github.com/ricardo-ch/helm-charts/blob/main/LICENSE)

Prometheus exporter for BunnyCDN

**Homepage:** <https://bunny.net/>

## Helm Chart

Make BunnyCDN metrics available for Prometheus to scrape.

### How To Install

Simply add this Chart repository to Helm:

```sh
➜ helm repo add ricardo https://ricardo-ch.github.io/helm-charts/
"ricardo" has been added to your repositories
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| api_key | string | `""` | The BunnyCDN API Key, see https://support.bunny.net/hc/en-us/articles/360012168840 |
| deployment.image | string | `"ricardoag/bunnycdn_exporter"` | BunnyCDN Exporter Container Image |
| deployment.pull_policy | string | `"IfNotPresent"` | Pull Policy |
| deployment.timeout | string | `"30s"` |  |
| deployment.version | string | `"v0.2.3"` | BunnyCDN Exporter Image Version |
| port | string | `"9584"` | Scrape port |
| resources | object | `{"limits":{"memory":"20Mi"},"requests":{"cpu":"2m","memory":"20Mi"}}` | Kubernetes resource limits |
| scrape | string | `"true"` | Scraping enabled? |

## Source Code

* <https://github.com/ricardo-ch/bunnycdn_exporter>
* <https://github.com/ricardo-ch/helm-charts/tree/main/charts/bunnycdn-exporter>
