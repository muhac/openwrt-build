#!/bin/bash

workdir=$(pwd)
confdir="$workdir/../settings"

### Add packages
mkdir package/external
cd package/external || return 1

# Add packages here

### Add config
cat >> "$confdir/extra.conf" <<EOF

# Add config here

EOF

### Merge config
cd "$confdir" || return 1
cat extra.conf >> system.conf

cd "$workdir" || return 1
