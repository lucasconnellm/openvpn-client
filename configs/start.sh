#!/bin/bash

echo $0

cd /vpn
if [[ -x ./configure.sh ]]; then
    ./configure.sh || exit 1
fi
exec /usr/bin/openvpn.sh
