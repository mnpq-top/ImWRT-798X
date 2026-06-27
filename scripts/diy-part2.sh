#!/bin/bash

sed -i 's/CONFIG_TARGET_MULTI_PROFILE=y/CONFIG_TARGET_MULTI_PROFILE=n/' .config
sed -i '/CONFIG_TARGET_DEVICE_/d' .config
echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cmcc_rax3000m=y" >> .config
echo "CONFIG_TARGET_DEVICE_mediatek_filogic_DEVICE_cmcc_rax3000m=y" >> .config

cat <<EOF >> .config

CONFIG_PACKAGE_nano=y
#CONFIG_PACKAGE_cfdisk=y
CONFIG_PACKAGE_kmod-tls=y
#CONFIG_PACKAGE_kmod-usb-net-rtl8152-vendor=y

CONFIG_PACKAGE_docker=y
CONFIG_PACKAGE_docker-compose=y
CONFIG_PACKAGE_dockerd=y

CONFIG_PACKAGE_luci-proto-wireguard=y

CONFIG_PACKAGE_mosquitto-ssl=y

CONFIG_PACKAGE_adguardhome=y
#CONFIG_PACKAGE_xray-core=y

CONFIG_PACKAGE_cloudflared=y
CONFIG_PACKAGE_luci-app-cloudflared=y
CONFIG_PACKAGE_luci-i18n-cloudflared-zh-cn=y

CONFIG_PACKAGE_luci-app-samba4=y
CONFIG_PACKAGE_luci-i18n-samba4-zh-cn=y

CONFIG_PACKAGE_rtp2httpd=y
#CONFIG_PACKAGE_luci-app-rtp2httpd=y
#CONFIG_PACKAGE_luci-i18n-rtp2httpd-zh-cn=y

CONFIG_PACKAGE_luci-app-arpbind=y
CONFIG_PACKAGE_luci-i18n-arpbind-zh-cn=y

CONFIG_PACKAGE_luci-app-wol=y
CONFIG_PACKAGE_luci-i18n-wol-zh-cn=y

#CONFIG_PACKAGE_luci-app-zerotier=y
#CONFIG_PACKAGE_luci-i18n-zerotier-zh-cn=y

EOF
