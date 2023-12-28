#!/bin/bash

workdir=$(pwd)
conf='../settings/custom.conf'

### Timezone
tz='Etc/GMT'

# Use zonename instead of timezone, see doc:
# https://openwrt.org/docs/guide-user/base-system/system_configuration
# https://github.com/openwrt/luci/blob/master/modules/luci-lua-runtime/luasrc/sys/zoneinfo/tzdata.lua

# Modify the default timezone
# https://github.com/openwrt/openwrt/blob/v23.05.2/package/base-files/files/bin/config_generate#L315
sed -i "s#timezone='UTC'#zonename='$tz'#g" package/base-files/files/bin/config_generate

### LAN IP
addr='192.168.1.1'
mask='255.255.255.0'

# Modify the default LAN IP address and subnet mask
# https://github.com/openwrt/openwrt/tree/v23.05.2/package/base-files/files/bin/config_generate#L163-L169
sed -i "s#192.168.1.1#$addr#g" package/base-files/files/bin/config_generate
sed -i "s#255.255.255.0#$mask#g" package/base-files/files/bin/config_generate

### Add packages
mkdir package/custom
cd package/custom || return 1

### Add packages here

### Add config
cd "$workdir" || return 1

cat >> "$conf" <<EOF

### Add config here

EOF
