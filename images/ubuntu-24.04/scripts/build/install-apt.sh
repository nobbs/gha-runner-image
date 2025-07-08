#!/bin/bash -e

packages_vital=(
  adduser
  bzip2
  ca-certificates
  curl
  g++
  gcc
  gpg-agent
  jq
  lsb-release
  make
  software-properties-common
  tar
  unzip
  wget
)

packages_common=(
  autoconf
  automake
  dbus
  dnsutils
  dpkg
  dpkg-dev
  fakeroot
  fonts-noto-color-emoji
  gnupg2
  iproute2
  iputils-ping
  libsqlite3-dev
  libssl-dev
  libtool
  libyaml-dev
  locales
  mercurial
  openssh-client
  p7zip-rar
  pkg-config
  python-is-python3
  rpm
  texinfo
  tk
  tree
  tzdata
  upx
  xvfb
  xz-utils
  zsync
)

packages_cmd=(
  acl
  aria2
  binutils
  bison
  brotli
  coreutils
  file
  findutils
  flex
  ftp
  haveged
  lz4
  m4
  mediainfo
  net-tools
  netcat-traditional
  p7zip-full
  parallel
  patchelf
  pigz
  pollinate
  rsync
  shellcheck
  sphinxsearch
  sqlite3
  ssh
  sshpass
  sudo
  swig
  systemd-coredump
  telnet
  time
  zip
)

apt-get update
apt-get install --no-install-recommends "${packages_vital[@]}"
apt-get install --no-install-recommends "${packages_common[@]}"
apt-get install --no-install-recommends "${packages_cmd[@]}"

# Clean up APT when done
apt-get clean
rm -rf /var/lib/apt/lists/*
