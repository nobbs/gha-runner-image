#!/bin/bash -e

# renovate: datasource=github-releases depName=helm packageName=helm/helm
HELM_VERSION=3.18.3

# Download Helm
curl -fLO https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz

# Verify the download
curl -fLO https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz.sha256sum
sha256sum -c helm-v${HELM_VERSION}-linux-amd64.tar.gz.sha256sum

# Extract Helm and move it to the desired location
tar xzf helm-v${HELM_VERSION}-linux-amd64.tar.gz
mv linux-amd64/helm /tmp/bin/helm
chmod 755 /tmp/bin/helm

# Clean up temporary files
rm -rf /tmp/build
