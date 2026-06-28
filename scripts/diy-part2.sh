#!/bin/bash

sed -i 's/="192.168.1./="192.168.0./g' .config
sed -i '/CONFIG_TARGET_mediatek_filogic_DEVICE_/d' .config
echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cmcc_rax3000m=y" >> .config

cat <<EOF >> .config

CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_cfdisk=m
CONFIG_PACKAGE_kmod-tls=y
CONFIG_PACKAGE_kmod-usb-net-rtl8152-vendor=m

CONFIG_PACKAGE_docker=m
CONFIG_PACKAGE_docker-compose=m
CONFIG_PACKAGE_dockerd=m

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
