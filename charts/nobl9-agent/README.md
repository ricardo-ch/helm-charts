# nobl9-agent

![Version: 1.0.9](https://img.shields.io/badge/Version-1.0.9-informational?style=flat-square) ![AppVersion: 0.36.0](https://img.shields.io/badge/AppVersion-0.36.0-informational?style=flat-square) ![Release Status](https://github.com/ricardo-ch/helm-charts/workflows/Release%20Charts/badge.svg) [![License](https://img.shields.io/github/license/ricardo-ch/helm-charts)](https://github.com/ricardo-ch/helm-charts/blob/main/LICENSE)

This chart installs the agent required talk to [Nobl9](https://nobl9.com/).

> Nobl9 Service Level Objectives Platform connects your reliability metrics to business goals via a modern engineering workflow.

### How To Install

Simply add this Chart repository to Helm:

```sh
➜ helm repo add ricardo https://ricardo-ch.github.io/helm-charts/
"ricardo" has been added to your repositories
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config | object | `{"client_id":"placeholder","client_secret":"placeholder","datasource_name":"","organization":"","project":""}` | Agent Configuration, get this data from the Nobl9 UI |
| config.client_id | string | `"placeholder"` | Client ID |
| config.client_secret | string | `"placeholder"` | Client Secret |
| config.datasource_name | string | `""` | Name of the datasource |
| config.organization | string | `""` | Name of the organization |
| config.project | string | `""` | Name of the project |
| deployment.image | string | `"nobl9/agent"` | Nobl9 Agent Container Image |
| deployment.pull_policy | string | `"IfNotPresent"` | Pull Policy |
| deployment.version | string | `"0.36.0"` | Nobl9 Agent Container Image Version |
| pod_annotations | object | `{}` | Set custom pod annotations |
| resources | object | `{"requests":{"cpu":"0.1","memory":"350Mi"}}` | Set kubernetes specific resource limits |

## Source Code

* <https://github.com/ricardo-ch/helm-charts/tree/main/charts/nobl9-agent>
