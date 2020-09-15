#!/bin/bash

## put whatever is necessary to acquire / build .ovpn files into /vpn here

echo $0

[[ -L vpn.conf ]] && rm vpn.conf

if [[ ! -e vpn.conf ]]; then
    selected=$(find . -name '*.ovpn' | shuf | head -1)
    if [[ ! -r $selected ]]; then
        echo "Unable to read configuration file ($selected)"
        exit 1
    fi
    echo "Selected $selected as configuration file"
    ln -s $selected vpn.conf
fi
