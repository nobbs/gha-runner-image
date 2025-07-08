#!/bin/bash -e

# Configure APT for faster package management
echo 'APT::Acquire::Retries "10";' >/etc/apt/apt.conf.d/80-retries
echo 'APT::Get::Assume-Yes "true";' >/etc/apt/apt.conf.d/90-assume-yes
echo 'APT::Get::Always-Include-Phased-Updates "true";' >/etc/apt/apt.conf.d/99-phased-updates

# Workaround for bad proxy issues
cat <<EOF >>/etc/apt/apt.conf.d/99-bad_proxy
Acquire::http::Pipeline-Depth 0;
Acquire::http::No-Cache true;
Acquire::https::Pipeline-Depth 0;
Acquire::https::No-Cache true;
Acquire::BrokenProxy    true;
EOF

# Configure APT to handle configuration file changes
cat <<EOF >>/etc/apt/apt.conf.d/10-dpkg-options
Dpkg::Options {
  "--force-confdef";
  "--force-confold";
}
EOF

# Disable automatic removal of packages and hide auto-remove suggestions
cat <<EOF >>/etc/apt/apt.conf.d/10-apt-autoremove
APT::Get::AutomaticRemove "0";
APT::Get::HideAutoRemove "1";
EOF
