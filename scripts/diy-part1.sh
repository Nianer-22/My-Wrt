
#!/bin/bash
set -e

# ImmortalWrt 25.12.2
# x86_64 UEFI EXT4

LAN_IP="10.10.10.1"
LAN_NETMASK="255.255.255.0"

mkdir -p files/etc/uci-defaults

cat > files/etc/uci-defaults/99-custom-network <<EOF
#!/bin/sh

uci set network.lan.ipaddr='${LAN_IP}'
uci set network.lan.netmask='${LAN_NETMASK}'
uci commit network

exit 0
EOF

chmod 755 files/etc/uci-defaults/99-custom-network

echo "LAN configuration prepared: ${LAN_IP}"
