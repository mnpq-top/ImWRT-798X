#!/bin/bash

sed -i '/CONFIG_TARGET_mediatek_filogic_DEVICE_/d' .config
cat <<EOF >> .config

CONFIG_TARGET_mediatek_filogic_DEVICE_cmcc_rax3000m=y
CONFIG_TARGET_PREINIT_IP="192.168.0.1"
CONFIG_TARGET_PREINIT_NETMASK="255.255.255.0"

EOF

cat <<EOF >> .config

CONFIG_PACKAGE_nano=y
#CONFIG_PACKAGE_cfdisk=y
CONFIG_PACKAGE_kmod-tls=y
CONFIG_PACKAGE_kmod-usb-net-rtl8152-vendor=y

CONFIG_PACKAGE_docker=y
CONFIG_PACKAGE_docker-compose=y
CONFIG_PACKAGE_dockerd=y

CONFIG_PACKAGE_luci-proto-wireguard=y

CONFIG_PACKAGE_mosquitto-ssl=y

#CONFIG_PACKAGE_adguardhome=y
CONFIG_PACKAGE_https-dns-proxy=y
CONFIG_PACKAGE_luci-app-https-dns-proxy=y
CONFIG_PACKAGE_luci-i18n-https-dns-proxy-zh-cn=y

CONFIG_PACKAGE_cloudflared=y
CONFIG_PACKAGE_luci-app-cloudflared=y
CONFIG_PACKAGE_luci-i18n-cloudflared-zh-cn=y

CONFIG_PACKAGE_luci-app-samba4=y
CONFIG_PACKAGE_luci-i18n-samba4-zh-cn=y

CONFIG_PACKAGE_rtp2httpd=y
CONFIG_PACKAGE_luci-app-rtp2httpd=y
CONFIG_PACKAGE_luci-i18n-rtp2httpd-zh-cn=y

CONFIG_PACKAGE_luci-app-wol=y
CONFIG_PACKAGE_luci-i18n-wol-zh-cn=y

CONFIG_PACKAGE_luci-app-eqos-mtk=y
CONFIG_PACKAGE_luci-i18n-eqos-mtk-zh-cn=y

EOF
