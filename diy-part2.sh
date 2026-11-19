#!/bin/bash
# 修改默认内网 IP 为 10.10.10.1
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate
# 确保默认子网掩码为 255.255.255.0 (/24)
sed -i 's/255.255.255.0/255.255.255.0/g' package/base-files/files/bin/config_generate
