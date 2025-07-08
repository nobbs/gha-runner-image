#!/bin/bash -e

# renovate: datasource=github-releases depName=runner packageName=actions/runner
RUNNER_VERSION=2.326.0

# renovate: datasource=github-releases depName=runner-container-hooks packageName=actions/runner-container-hooks
RUNNER_CONTAINER_HOOKS_VERSION=0.7.0

# Install the GitHub Actions runner
curl -fLo runner.tar.gz \
  https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz
tar xzf ./runner.tar.gz
rm -f ./runner.tar.gz

# Install the runner container hooks
curl -fLo runner-container-hooks.zip \
  https://github.com/actions/runner-container-hooks/releases/download/v${RUNNER_CONTAINER_HOOKS_VERSION}/actions-runner-hooks-k8s-${RUNNER_CONTAINER_HOOKS_VERSION}.zip
unzip -o ./runner-container-hooks.zip -d ./k8s
rm -f ./runner-container-hooks.zip
