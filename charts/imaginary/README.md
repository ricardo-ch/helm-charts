# imaginary

![Version: 0.2.4](https://img.shields.io/badge/Version-0.2.4-informational?style=flat-square) ![AppVersion: 1.2.4](https://img.shields.io/badge/AppVersion-1.2.4-informational?style=flat-square) ![Release Status](https://github.com/ricardo-ch/helm-charts/workflows/Release%20Charts/badge.svg) [![License](https://img.shields.io/github/license/ricardo-ch/helm-charts)](https://github.com/ricardo-ch/helm-charts/blob/main/LICENSE)

This chart installs [Imaginary](https://github.com/h2non/imaginary).

Imaginary is a tool to process images.
e.g: crop, resize, add background...

## Helm Chart

This chart should allow most use case of Imaginary.

### How To Install

Simply add this Chart repository to Helm:

```sh
➜ helm repo add ricardo https://ricardo-ch.github.io/helm-charts/
"ricardo" has been added to your repositories
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalAnnotations | object | `{}` | append annotation to the pod annotation list |
| additionalLabels | object | `{}` | append labels to both the deployment, pdb, hpa and the pods label list |
| apikey | string | `""` | Define API key for authorization |
| config | object | `{}` | Imaginary arguments. use the same hyphen separated synthax for the key. use strings for the value or you might get a bad formatting. |
| env | object | `{}` |  |
| gracefulShutdownDelaySeconds | int | `10` | estimated time to propagate the information the pod is not part of the service anymore |
| hpa | object | `{"maxReplicas":2,"minReplicas":2}` | Horizontal pod autoscaling configuration |
| httpPort | int | `8080` | Which port should Imaginary and its Kubernetes service listen |
| image | string | `"h2non/imaginary:1.2.4"` | Docker image repository to pull it. |
| imagePullPolicy | string | `"IfNotPresent"` | imagePullPolicy used by k8s |
| istio.cpu | string | `"10m"` | istio sidecar cpu request |
| istio.cpuLimit | string | `nil` | istio sidecar cpu request limit |
| istio.inject | bool | `false` | istio sidecar configuration, enable injecting sidecar |
| istio.memory | string | `"128Mi"` | istio sidecar memory request |
| istio.memoryLimit | string | `"128Mi"` | istio sidecar memory limit |
| livenessProbe.failureThreshold | int | `3` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `1` |  |
| nodeSelector | object | `{}` | A node selector label |
| pdb.minAvailable | string | `"50%"` | minAvailable field from k8s pdb |
| readinessProbe | object | `{"failureThreshold":3,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1}` | Config for Liveness & Readiness probes |
| resources | object | `{}` | Set kubernetes specific resource limits |
| serviceType | string | `"ClusterIP"` | Kubernetes service type |
| tls.certificate | string | `""` | Base64 encoded TLS certificate file |
| tls.privateKey | string | `""` | Base64 encoded private key file for TLS certificate. |
| tolerations | list | `[]` | A toleration |
| topologyAware | string | `"auto"` | Configures Topology Aware Hints |
| topologySpreadConstraints | list | `[]` | Configures the topology spread constraints |

## Source Code

* <https://github.com/ricardo-ch/helm-charts/tree/main/charts/imaginary>
* <https://github.com/h2non/imaginary>
