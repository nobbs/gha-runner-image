# syntax=docker/dockerfile:1@sha256:9857836c9ee4268391bb5b09f9f157f3c91bb15821bb77969642813b0d00518d

FROM ubuntu:24.04@sha256:440dcf6a5640b2ae5c77724e68787a906afb8ddee98bf86db94eea8528c2c076 AS installer-base

RUN apt-get update -y && apt-get install -y --no-install-recommends curl unzip ca-certificates

RUN mkdir -p /tmp/bin
WORKDIR /tmp/build

FROM installer-base AS install-runner

WORKDIR /actions-runner

RUN --mount=type=bind,source=./scripts/build/install-runner.sh,target=/install-runner.sh \
  /install-runner.sh
RUN --mount=type=bind,source=./scripts/build/install-docker.sh,target=/install-docker.sh \
  /install-docker.sh

FROM installer-base AS install-kubectl

RUN --mount=type=bind,source=./scripts/build/install-kubectl.sh,target=/install-kubectl.sh \
  /install-kubectl.sh

FROM installer-base AS install-helm

RUN --mount=type=bind,source=./scripts/build/install-helm.sh,target=/install-helm.sh \
  /install-helm.sh

FROM ubuntu:24.04@sha256:440dcf6a5640b2ae5c77724e68787a906afb8ddee98bf86db94eea8528c2c076 AS runner

ENV DEBIAN_FRONTEND=noninteractive
ENV RUNNER_MANUALLY_TRAP_SIG=1
ENV ACTIONS_RUNNER_PRINT_LOG_TO_STDOUT=1
ENV ImageOS=ubuntu24

RUN --mount=type=bind,source=./scripts/build/configure-apt.sh,target=/configure-apt.sh \
  --mount=type=bind,source=./scripts/build/configure-apt-sources.sh,target=/configure-apt-sources.sh \
  --mount=type=bind,source=./scripts/build/install-apt.sh,target=/install-apt.sh \
  /configure-apt.sh && \
  /configure-apt-sources.sh && \
  /install-apt.sh

RUN --mount=type=bind,source=./scripts/build/install-git.sh,target=/install-git.sh \
  /install-git.sh

RUN --mount=type=bind,source=./scripts/build/install-az-cli.sh,target=/install-az-cli.sh \
  /install-az-cli.sh

RUN --mount=type=bind,source=./scripts/build/configure-user.sh,target=/configure-user.sh \
  /configure-user.sh

WORKDIR /home/runner

# Copy the runner files from the install-runner stage, install the runner and docker binaries
COPY --chown=runner:docker --from=install-runner /actions-runner .
COPY --chown=runner:docker --from=install-runner /usr/local/lib/docker/cli-plugins /usr/local/lib/docker/cli-plugins
RUN install -o root -g root -m 755 docker/* /usr/bin/ && rm -rf docker

# Copy binaries from previous installer stages
COPY --link --from=install-kubectl /tmp/bin/kubectl /usr/local/bin/
COPY --link --from=install-helm /tmp/bin/helm /usr/local/bin/

USER runner
