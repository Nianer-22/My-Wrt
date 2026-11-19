
#!/bin/bash

# ==========================================
# ImmortalWrt 25.12.2 X86_64
# Custom configuration
# ==========================================

# Set default LAN IP
LAN_IP="10.10.10.1"
LAN_NETMASK="255.255.255.0"

# Modify default LAN configuration
sed -i "s/192\.168\.1\.1/${LAN_IP}/g" package/base-files/files/bin/config_generate

# Set default timezone
sed -i "s/UTC/CST-8/g" package/base-files/files/bin/config_generate

echo "======================================"
echo "Custom configuration completed"
echo "LAN IP: ${LAN_IP}"
echo "Netmask: ${LAN_NETMASK}"
echo "======================================"
