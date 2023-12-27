#!/bin/bash

pwd && ls -al

workdir=$(pwd)
conf="../settings/build.conf"

### Add packages
mkdir package/external
cd package/external || return 1

### Add packages here

### Add config
cd "$workdir" || return 1

cat >> "$conf" <<EOF

### Add config here

EOF
