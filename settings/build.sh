#!/bin/bash

pwd && ls -al

workdir=$(pwd)
conf='../settings/build.conf'

### Add packages
mkdir package/external
cd package/external || return 1

# Argon Theme
git clone https://github.com/jerrykuku/luci-theme-argon.git

# Argon Theme Config
git clone https://github.com/jerrykuku/luci-app-argon-config.git

### Add config
cd "$workdir" || return 1

cat >> "$conf" <<EOF

# Argon Theme
CONFIG_PACKAGE_luci-theme-argon=y

# Argon Theme Config
CONFIG_PACKAGE_luci-app-argon-config=y

EOF
