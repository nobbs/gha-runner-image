#!/bin/bash -e

## Install git, git-lfs and git-ftp
curl -fsSL https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
add-apt-repository "ppa:git-core/ppa" -y
apt-get update
apt-get install git git-lfs git-ftp

# Clean up APT when done
rm /etc/apt/sources.list.d/github_git-lfs.list
add-apt-repository --remove "ppa:git-core/ppa"
apt-get clean
rm -rf /var/lib/apt/lists/*

# Git version 2.35.2 introduces security fix that breaks action\checkout https://github.com/actions/checkout/issues/760
cat <<EOF >>/etc/gitconfig
[safe]
    directory = *
EOF

# Add well-known SSH host keys to known_hosts
ssh-keyscan -t rsa,ecdsa,ed25519 github.com >>/etc/ssh/ssh_known_hosts
ssh-keyscan -t rsa ssh.dev.azure.com >>/etc/ssh/ssh_known_hosts
