# PromLens Chart

This chart installs [PromLens](https://promlens.com/) from [PromLabs](https://promlabs.com/).

PromLens is a tool that makes learning and using PromQL easier and more productive. It integrates a visual query builder with explanation and visualization features.

## Helm Chart

This is an initial release, based on the Helm chart we are using to deploy the tool internally. Currently, there are muliple features of PromLens that this Chart doesn't provide. If something is missing, feel free to open and issue or submit a Pull Request.

### How To Install

Simply add this Chart repository to your Helm:

```sh
➜ helm repo add ricardo https://ricardo-ch.github.io/helm-charts/
"ricardo" has been added to your repositories
```

## Configuration

|Name|Description| Default Value|
|----|-----------|--------------|
| image | PromLens image repository and name | 'promlabs/promlens' |
| version | PromLens image tag | latest |
| replicas | Number of replicas | 1 |
| license | PromLens License | |
| grafana_url | Grafana URL | |
| grafana_api_key | Grafana API Key | |
| gcs_sa | Google Storage Account | |
| shared_links_bucket_name | Bucket name for shared links | promlens |
