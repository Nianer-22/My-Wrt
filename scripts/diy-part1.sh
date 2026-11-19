
#!/bin/bash
set -e

# ==========================================
# ImmortalWrt 25.12.2 X86_64
# Custom LAN configuration
# ==========================================

LAN_IP="10.10.10.1"
LAN_NETMASK="255.255.255.0"

# Create first-boot configuration directory
mkdir -p files/etc/uci-defaults

# Configure LAN IP on first boot
cat > files/etc/uci-defaults/99-custom-network <<EOF
#!/bin/sh

uci set network.lan.ipaddr='${LAN_IP}'
uci set network.lan.netmask='${LAN_NETMASK}'
uci commit network

exit 0
EOF

chmod 755 files/etc/uci-defaults/99-custom-network

echo "======================================"
echo "Custom configuration completed"
echo "LAN IP: ${LAN_IP}"
echo "Netmask: ${LAN_NETMASK}"
echo "======================================"
