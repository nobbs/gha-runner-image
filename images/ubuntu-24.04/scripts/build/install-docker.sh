#!/bin/bash -e

# renovate: datasource=github-releases depName=docker packageName=moby/moby
DOCKER_VERSION=28.3.2

# renovate: datasource=github-releases depName=docker-buildx packageName=docker/buildx
BUILDX_VERSION=0.25.0

# renovate: datasource=github-releases depName=docker-compose packageName=docker/compose
COMPOSE_VERSION=2.39.1

mkdir -p /usr/local/lib/docker/cli-plugins

# Install docker binaries
curl -fLo docker.tgz \
  https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz
tar xzf docker.tgz
rm -f docker.tgz

# Install docker-buildx
curl -fLo /usr/local/lib/docker/cli-plugins/docker-buildx \
  https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.linux-amd64
chmod +x /usr/local/lib/docker/cli-plugins/docker-buildx

# Install docker-compose
curl -fLo /usr/local/lib/docker/cli-plugins/docker-compose \
  https://github.com/docker/compose/releases/download/v${COMPOSE_VERSION}/docker-compose-linux-x86_64
chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
