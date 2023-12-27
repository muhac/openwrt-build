#!/bin/bash

pwd && ls -al

workdir=$(pwd)
conf="../settings/custom.conf"

### Add packages
mkdir package/custom
cd package/custom || return 1

### Add packages here

### Add config
cd "$workdir" || return 1

cat >> "$conf" <<EOF

### Add config here

EOF

echo "config has been updated:"
cat "$conf"
