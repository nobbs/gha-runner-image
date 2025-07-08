#!/bin/bash -e

# renovate: datasource=github-releases depName=kubectl packageName=kubernetes/kubernetes
KUBECTL_VERSION=1.32.6

# Download kubectl
curl -fLO https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl

# Verify the download
curl -fLO https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl.sha256
echo "$(cat kubectl.sha256)  kubectl" | sha256sum -c -

# Move kubectl to the desired location
mv kubectl /tmp/bin/kubectl
chmod 755 /tmp/bin/kubectl

# Clean up temporary files
rm -rf /tmp/build
