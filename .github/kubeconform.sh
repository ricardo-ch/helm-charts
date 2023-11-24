#!/bin/env bash
set -euo pipefail

CHART_DIRS="$(git diff --find-renames --name-only "$(git rev-parse --abbrev-ref HEAD)" remotes/origin/main -- charts | grep '[cC]hart.yaml' | sed -e 's#/[Cc]hart.yaml##g')"
KUBECONFORM_VERSION="v0.6.4"

# install kubeval
curl --silent --show-error --fail --location --output /tmp/kubeconform-linux-amd64.tar.gz https://github.com/yannh/kubeconform/releases/download/"${KUBECONFORM_VERSION}"/kubeconform-linux-amd64.tar.gz
tar -xf /tmp/kubeconform-linux-amd64.tar.gz kubeconform

# validate charts
for CHART_DIR in ${CHART_DIRS}; do
  helm dependency build "${CHART_DIR}"
  helm template "${CHART_DIR}" | ./kubeconform -summary -output json -kubernetes-version ${KUBERNETES_VERSION}
done
