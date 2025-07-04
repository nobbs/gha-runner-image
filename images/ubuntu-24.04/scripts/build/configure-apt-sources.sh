#!/bin/bash -e

cat <<EOF >>/etc/apt/apt-mirrors.txt
http://azure.archive.ubuntu.com/ubuntu/ priority:1
https://archive.ubuntu.com/ubuntu/ priority:2
https://security.ubuntu.com/ubuntu/ priority:3
EOF

sed -i 's|http://azure\.archive\.ubuntu\.com/ubuntu/|mirror+file:/etc/apt/apt-mirrors.txt|' /etc/apt/sources.list.d/ubuntu.sources
