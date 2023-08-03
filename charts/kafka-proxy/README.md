# PromLens

![Version: 0.2.10](https://img.shields.io/badge/Version-0.2.10-informational?style=flat-square) ![AppVersion: 0.3.6](https://img.shields.io/badge/AppVersion-0.3.6-informational?style=flat-square) ![Release Status](https://github.com/ricardo-ch/helm-charts/workflows/Release%20Charts/badge.svg) [![License](https://img.shields.io/github/license/ricardo-ch/helm-charts)](https://github.com/ricardo-ch/helm-charts/blob/main/LICENSE)

This chart installs [kafka-proxy](https://github.com/grepplabs/kafka-proxy).

The Kafka Proxy is based on the idea of Cloud SQL Proxy. It allows a service to connect to Kafka brokers without having to deal with SASL/PLAIN authentication and SSL certificates.

## Helm Chart

### How To Install

Simply add this Chart repository to Helm:

```sh
➜ helm repo add ricardo https://ricardo-ch.github.io/helm-charts/
"ricardo" has been added to your repositories
```

This chart expects to run on GKE and makes use of [TCP/UDP load balancing](https://cloud.google.com/kubernetes-engine/docs/how-to/service-parameters).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Node affinity configuration |
| config.kafkaClient | object | `{"brokers":["kafka-0:9092","kafka-1:9092"],"jaas":"org.apache.kafka.common.security.plain.PlainLoginModule required username=\"username\" password=\"password\";"}` | Kafka client configuration |
| config.loadBalancerIP | string | `""` | Specifies an IP for the load balancers. If omitted, an ephemeral IP is assigned. |
| config.loadBalancerSourceRanges | list | `["0.0.0.0/0"]` | Configures optional firewall rules in GKE and in the VPC to only allow certain source ranges. If you omit this field, your Service accepts traffic from any IP address (0.0.0.0/0). |
| config.loadBalancerType | string | `"NodePort"` | Service Type, supported: LoadBalancer, NodePort |
| config.proxyClientSaslEnabled | bool | `false` | SASL enabled on the proxy client. |
| config.proxyClientTlsEnabled | bool | `true` | TLS enabled on the proxy client. |
| config.proxyServerTlsEnabled | bool | `false` | TLS enabled on the proxy server. Requires a certificate deployed in a secret called 'kafka-proxy-cert' containing the certificate and key. |
| image | string | `"grepplabs/kafka-proxy"` | Kafka-proxy Container Image |
| nodeSelector | object | `{}` | A node selector label |
| podAnnotations | object | `{"prometheus.io/port":"9399","prometheus.io/scrape":"true"}` | Set a pod annotations |
| podAnnotations."prometheus.io/port" | string | `"9399"` | Set a Prometheus scrape port |
| podAnnotations."prometheus.io/scrape" | string | `"true"` | Set a flag to mark pod for scrapping |
| pullPolicy | string | `"IfNotPresent"` | Kubernetes PullPolicy |
| reloader.onChange | bool | `false` | Add annotation on statefulset in order to perform a rolling upgrade on secret/configmap changes |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` | Set kubernetes specific resource limits |
| tolerations | list | `[]` | A toleration |
| version | string | `"v0.3.1"` | Kafka-proxy Container Image Version |

## Source Code

* <https://github.com/grepplabs/kafka-proxy>
* <https://github.com/ricardo-ch/helm-charts/tree/main/charts/kafka-proxy>
