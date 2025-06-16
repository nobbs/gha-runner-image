# syntax=docker/dockerfile:1

FROM ubuntu:24.04 AS build

# renovate: datasource=github-releases depName=runner packageName=actions/runner
ARG RUNNER_VERSION=2.325.0

# renovate: datasource=github-releases depName=runner-container-hooks packageName=actions/runner-container-hooks
ARG RUNNER_CONTAINER_HOOKS_VERSION=0.7.0

# renovate: datasource=github-releases depName=docker packageName=moby/moby
ARG DOCKER_VERSION=28.2.2

# # renovate: datasource=github-releases depName=buildx packageName=docker/buildx
ARG BUILDX_VERSION=0.24.0

COPY ./files/etc/apt/apt.conf.d/99-fix-bad-proxy /etc/apt/apt.conf.d/99-fix-bad-proxy

RUN <<EOF
#!/bin/bash
set -euo pipefail
apt update -y
apt install -y --no-install-recommends curl unzip ca-certificates
EOF

WORKDIR /actions-runner

RUN <<EOF
#!/bin/bash
set -euo pipefail
curl -fLo runner.tar.gz https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz
tar xzf ./runner.tar.gz
rm -f ./runner.tar.gz
EOF

RUN <<EOF
#!/bin/bash
set -euo pipefail
curl -fLo runner-container-hooks.zip https://github.com/actions/runner-container-hooks/releases/download/v${RUNNER_CONTAINER_HOOKS_VERSION}/actions-runner-hooks-k8s-${RUNNER_CONTAINER_HOOKS_VERSION}.zip
unzip -o ./runner-container-hooks.zip -d ./k8s
rm -f ./runner-container-hooks.zip
EOF

RUN <<EOF
#!/bin/bash
set -euo pipefail
curl -fLo docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz
tar xzf docker.tgz
rm -f docker.tgz
mkdir -p /usr/local/lib/docker/cli-plugins
curl -fLo /usr/local/lib/docker/cli-plugins/docker-buildx https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.linux-amd64
chmod +x /usr/local/lib/docker/cli-plugins/docker-buildx
EOF

# renovate: datasource=docker depName=curl-image packageName=curlimages/curl
FROM curlimages/curl:8.14.1 AS installer

RUN mkdir -p /tmp/bin

WORKDIR /tmp/build

### Install kubectl

FROM installer AS install-kubectl

# renovate: datasource=github-releases depName=kubectl packageName=kubernetes/kubernetes
ARG KUBECTL_VERSION=1.32.5

RUN <<EOF
#!/bin/sh
set -euo pipefail
curl -fLO https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl
curl -fLO https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl.sha256
echo "$(cat kubectl.sha256)  kubectl" | sha256sum -c -
mv kubectl /tmp/bin/kubectl
chmod 755 /tmp/bin/kubectl
rm -rf /tmp/build
EOF

### Install helm

FROM installer AS install-helm

# renovate: datasource=github-releases depName=helm packageName=helm/helm
ARG HELM_VERSION=3.18.3

RUN <<EOF
#!/bin/sh
set -euo pipefail
curl -fLO https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz
curl -fLO https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz.sha256sum
sha256sum -c helm-v${HELM_VERSION}-linux-amd64.tar.gz.sha256sum
tar xzf helm-v${HELM_VERSION}-linux-amd64.tar.gz
mv linux-amd64/helm /tmp/bin/helm
chmod 755 /tmp/bin/helm
rm -rf /tmp/build
EOF

### Build final image

FROM ubuntu:24.04 AS runner

ENV DEBIAN_FRONTEND=noninteractive
ENV RUNNER_MANUALLY_TRAP_SIG=1
ENV ACTIONS_RUNNER_PRINT_LOG_TO_STDOUT=1
ENV ImageOS=ubuntu24

COPY ./files/etc/apt/apt.conf.d/99-fix-bad-proxy /etc/apt/apt.conf.d/99-fix-bad-proxy

RUN <<EOF
#!/bin/bash
set -euo pipefail
apt update -y
apt install -y --no-install-recommends ca-certificates sudo adduser lsb-release gpg-agent software-properties-common curl jq unzip
rm -rf /var/lib/apt/lists/*
EOF

RUN <<EOF
#!/bin/bash
set -euo pipefail
add-apt-repository ppa:git-core/ppa
apt update -y
apt install -y git
rm -rf /var/lib/apt/lists/*
EOF

RUN <<EOF
#!/bin/bash
set -euo pipefail
adduser --disabled-password --gecos "" --uid 1001 runner
groupadd docker --gid 123
usermod -aG sudo runner
usermod -aG docker runner
echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers
echo "Defaults env_keep += \"DEBIAN_FRONTEND\"" >> /etc/sudoers
EOF

WORKDIR /home/runner

COPY --chown=runner:docker --from=build /actions-runner .
COPY --chown=runner:docker --from=build /usr/local/lib/docker/cli-plugins/docker-buildx /usr/local/lib/docker/cli-plugins/docker-buildx

# Copy binaries from previous installer stages
COPY --link --from=install-kubectl /tmp/bin/kubectl /usr/local/bin/
COPY --link --from=install-helm /tmp/bin/helm /usr/local/bin/

RUN <<EOF
#!/bin/bash
set -euo pipefail
install -o root -g root -m 755 docker/* /usr/bin/ && rm -rf docker
EOF

USER runner
