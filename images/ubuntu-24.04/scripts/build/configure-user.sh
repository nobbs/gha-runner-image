#!/bin/bash -e

# Configure the runner user and groups
adduser --disabled-password --gecos "" --uid 1001 runner
usermod -aG sudo runner
groupadd docker --gid 123
usermod -aG docker runner

# Configure sudoers file to allow passwordless sudo for the runner user
echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" >/etc/sudoers
echo "Defaults env_keep += \"DEBIAN_FRONTEND\"" >>/etc/sudoers
