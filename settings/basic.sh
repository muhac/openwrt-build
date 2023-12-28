#!/bin/bash

workdir=$(pwd)
confdir="$workdir/../settings"

### Add packages
mkdir package/external
cd package/external || return 1

# Argon Theme
git clone https://github.com/jerrykuku/luci-theme-argon.git

# Argon Theme Config
git clone https://github.com/jerrykuku/luci-app-argon-config.git

### Add config
cat >> "$confdir/basic.conf" <<EOF

# Argon Theme
CONFIG_PACKAGE_luci-theme-argon=y

# Argon Theme Config
CONFIG_PACKAGE_luci-app-argon-config=y

EOF

### Merge config
cd "$confdir" || return 1
cat basic.conf >> system.conf

cd "$workdir" || return 1
