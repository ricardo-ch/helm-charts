# keycloak

![Version: 17.0.4](https://img.shields.io/badge/Version-17.0.4-informational?style=flat-square) ![AppVersion: 16.1.1](https://img.shields.io/badge/AppVersion-16.1.1-informational?style=flat-square)

Open Source Identity and Access Management For Modern Applications and Services

**Homepage:** <https://www.keycloak.org/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ricardo-ch | <sre@ricardo.ch> |  |

## Source Code

* <https://github.com/codecentric/helm-charts>
* <https://github.com/jboss-dockerfiles/keycloak>
* <https://github.com/bitnami/charts/tree/master/bitnami/postgresql>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | 10.16.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | string | `"podAntiAffinity:\n  requiredDuringSchedulingIgnoredDuringExecution:\n    - labelSelector:\n        matchLabels:\n          {{- include \"keycloak.selectorLabels\" . | nindent 10 }}\n        matchExpressions:\n          - key: app.kubernetes.io/component\n            operator: NotIn\n            values:\n              - test\n      topologyKey: kubernetes.io/hostname\n  preferredDuringSchedulingIgnoredDuringExecution:\n    - weight: 100\n      podAffinityTerm:\n        labelSelector:\n          matchLabels:\n            {{- include \"keycloak.selectorLabels\" . | nindent 12 }}\n          matchExpressions:\n            - key: app.kubernetes.io/component\n              operator: NotIn\n              values:\n                - test\n        topologyKey: failure-domain.beta.kubernetes.io/zone\n"` |  |
| args | list | `[]` |  |
| autoscaling.behavior.scaleDown.policies[0].periodSeconds | int | `300` |  |
| autoscaling.behavior.scaleDown.policies[0].type | string | `"Pods"` |  |
| autoscaling.behavior.scaleDown.policies[0].value | int | `1` |  |
| autoscaling.behavior.scaleDown.stabilizationWindowSeconds | int | `300` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.labels | object | `{}` |  |
| autoscaling.maxReplicas | int | `10` |  |
| autoscaling.metrics[0].resource.name | string | `"cpu"` |  |
| autoscaling.metrics[0].resource.target.averageUtilization | int | `80` |  |
| autoscaling.metrics[0].resource.target.type | string | `"Utilization"` |  |
| autoscaling.metrics[0].type | string | `"Resource"` |  |
| autoscaling.minReplicas | int | `3` |  |
| clusterDomain | string | `"cluster.local"` |  |
| command | list | `[]` |  |
| enableServiceLinks | bool | `true` |  |
| extraContainers | string | `""` |  |
| extraEnv | string | `""` |  |
| extraEnvFrom | string | `""` |  |
| extraInitContainers | string | `""` |  |
| extraPorts | list | `[]` |  |
| extraServiceMonitor.annotations | object | `{}` |  |
| extraServiceMonitor.enabled | bool | `false` |  |
| extraServiceMonitor.interval | string | `"10s"` |  |
| extraServiceMonitor.labels | object | `{}` |  |
| extraServiceMonitor.namespace | string | `""` |  |
| extraServiceMonitor.namespaceSelector | object | `{}` |  |
| extraServiceMonitor.path | string | `"/auth/realms/master/metrics"` |  |
| extraServiceMonitor.port | string | `"http"` |  |
| extraServiceMonitor.scrapeTimeout | string | `"10s"` |  |
| extraVolumeMounts | string | `""` |  |
| extraVolumes | string | `""` |  |
| fullnameOverride | string | `""` |  |
| hostAliases | list | `[]` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"docker.io/jboss/keycloak"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.console.annotations | object | `{}` |  |
| ingress.console.enabled | bool | `false` |  |
| ingress.console.ingressClassName | string | `""` |  |
| ingress.console.rules[0].host | string | `"{{ .Release.Name }}.keycloak.example.com"` |  |
| ingress.console.rules[0].paths[0].path | string | `"/auth/admin/"` |  |
| ingress.console.rules[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.labels | object | `{}` |  |
| ingress.rules[0].host | string | `"{{ .Release.Name }}.keycloak.example.com"` |  |
| ingress.rules[0].paths[0].path | string | `"/"` |  |
| ingress.rules[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.servicePort | string | `"http"` |  |
| ingress.tls[0].hosts[0] | string | `"keycloak.example.com"` |  |
| ingress.tls[0].secretName | string | `""` |  |
| lifecycleHooks | string | `""` |  |
| livenessProbe | string | `"httpGet:\n  path: /auth/\n  port: http\ninitialDelaySeconds: 0\ntimeoutSeconds: 5\n"` |  |
| nameOverride | string | `""` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.extraFrom | list | `[]` |  |
| networkPolicy.labels | object | `{}` |  |
| nodeSelector | object | `{}` |  |
| pgchecker.image.pullPolicy | string | `"IfNotPresent"` |  |
| pgchecker.image.repository | string | `"docker.io/busybox"` |  |
| pgchecker.image.tag | float | `1.32` |  |
| pgchecker.resources.limits.cpu | string | `"20m"` |  |
| pgchecker.resources.limits.memory | string | `"32Mi"` |  |
| pgchecker.resources.requests.cpu | string | `"20m"` |  |
| pgchecker.resources.requests.memory | string | `"32Mi"` |  |
| pgchecker.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| pgchecker.securityContext.runAsGroup | int | `1000` |  |
| pgchecker.securityContext.runAsNonRoot | bool | `true` |  |
| pgchecker.securityContext.runAsUser | int | `1000` |  |
| podAnnotations | object | `{}` |  |
| podDisruptionBudget | object | `{}` |  |
| podLabels | object | `{}` |  |
| podManagementPolicy | string | `"Parallel"` |  |
| podSecurityContext.fsGroup | int | `1000` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.networkPolicy.enabled | bool | `false` |  |
| postgresql.postgresqlDatabase | string | `"keycloak"` |  |
| postgresql.postgresqlPassword | string | `"keycloak"` |  |
| postgresql.postgresqlUsername | string | `"keycloak"` |  |
| priorityClassName | string | `""` |  |
| prometheusRule.annotations | object | `{}` |  |
| prometheusRule.enabled | bool | `false` |  |
| prometheusRule.labels | object | `{}` |  |
| prometheusRule.rules | list | `[]` |  |
| rbac.create | bool | `false` |  |
| rbac.rules | list | `[]` |  |
| readinessProbe | string | `"httpGet:\n  path: /auth/realms/master\n  port: http\ninitialDelaySeconds: 30\ntimeoutSeconds: 1\n"` |  |
| replicas | int | `1` |  |
| resources | object | `{}` |  |
| restartPolicy | string | `"Always"` |  |
| route.annotations | object | `{}` |  |
| route.enabled | bool | `false` |  |
| route.host | string | `""` |  |
| route.labels | object | `{}` |  |
| route.path | string | `"/"` |  |
| route.tls.enabled | bool | `true` |  |
| route.tls.insecureEdgeTerminationPolicy | string | `"Redirect"` |  |
| route.tls.termination | string | `"edge"` |  |
| secrets | object | `{}` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
| service.annotations | object | `{}` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.extraPorts | list | `[]` |  |
| service.httpManagementNodePort | string | `nil` |  |
| service.httpManagementPort | int | `9990` |  |
| service.httpNodePort | string | `nil` |  |
| service.httpPort | int | `80` |  |
| service.httpsNodePort | string | `nil` |  |
| service.httpsPort | int | `8443` |  |
| service.labels | object | `{}` |  |
| service.loadBalancerIP | string | `""` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.sessionAffinity | string | `""` |  |
| service.sessionAffinityConfig | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.imagePullSecrets | list | `[]` |  |
| serviceAccount.labels | object | `{}` |  |
| serviceAccount.name | string | `""` |  |
| serviceMonitor.annotations | object | `{}` |  |
| serviceMonitor.enabled | bool | `false` |  |
| serviceMonitor.interval | string | `"10s"` |  |
| serviceMonitor.labels | object | `{}` |  |
| serviceMonitor.namespace | string | `""` |  |
| serviceMonitor.namespaceSelector | object | `{}` |  |
| serviceMonitor.path | string | `"/metrics"` |  |
| serviceMonitor.port | string | `"http-management"` |  |
| serviceMonitor.scrapeTimeout | string | `"10s"` |  |
| skipInitContainers | bool | `false` |  |
| startupProbe | string | `"httpGet:\n  path: /auth/\n  port: http\ninitialDelaySeconds: 30\ntimeoutSeconds: 1\nfailureThreshold: 60\nperiodSeconds: 5\n"` |  |
| startupScripts."keycloak.cli" | string | `"{{- .Files.Get \"scripts/keycloak.cli\" }}\n"` |  |
| statefulsetAnnotations | object | `{}` |  |
| statefulsetLabels | object | `{}` |  |
| terminationGracePeriodSeconds | int | `60` |  |
| test.enabled | bool | `false` |  |
| test.image.pullPolicy | string | `"IfNotPresent"` |  |
| test.image.repository | string | `"docker.io/unguiculus/docker-python3-phantomjs-selenium"` |  |
| test.image.tag | string | `"v1"` |  |
| test.podSecurityContext.fsGroup | int | `1000` |  |
| test.securityContext.runAsNonRoot | bool | `true` |  |
| test.securityContext.runAsUser | int | `1000` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | string | `nil` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
