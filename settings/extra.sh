#!/bin/bash

workdir=$(pwd)
confdir="$workdir/../settings"

### Add packages
mkdir package/external
cd package/external || return 1

# Netdata
git clone https://github.com/muink/luci-app-netdata.git --branch nossl_version

### Add config
cat >> "$confdir/extra.conf" <<EOF

# Netdata
CONFIG_PACKAGE_luci-app-netdata=y

EOF

### Merge config
cd "$confdir" || return 1
cat extra.conf >> system.conf

cd "$workdir" || return 1
