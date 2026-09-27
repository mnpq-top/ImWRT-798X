#!/bin/bash

#sed -i '/CONFIG_TARGET_mediatek_filogic_DEVICE_/d' .config
#echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cmcc_rax3000m=y" >> .config

cat <<EOF >> .config

CONFIG_SDK=y
CONFIG_PACKAGE_nano=y
#CONFIG_PACKAGE_cfdisk=y
CONFIG_PACKAGE_kmod-tls=y

#CONFIG_PACKAGE_kmod-nf-nat6=y
#CONFIG_PACKAGE_kmod-ipt-nat6=y
#CONFIG_PACKAGE_kmod-bonding=y
#CONFIG_PACKAGE_luci-proto-bonding=y
CONFIG_PACKAGE_luci-proto-wireguard=y

#CONFIG_PACKAGE_kmod-usb2=y
#CONFIG_PACKAGE_kmod-usb3=y
#CONFIG_PACKAGE_kmod-usb-net=y
#CONFIG_PACKAGE_kmod-usb-net-rndis=y
#CONFIG_PACKAGE_r8152-firmware=y
#CONFIG_PACKAGE_kmod-usb-net-rtl8152=y
#CONFIG_PACKAGE_kmod-usb-net-rtl8152-vendor=y

#CONFIG_PACKAGE_docker=y
#CONFIG_PACKAGE_docker-compose=y
#CONFIG_PACKAGE_dockerd=y

CONFIG_PACKAGE_https-dns-proxy=y
CONFIG_PACKAGE_luci-app-https-dns-proxy=y
CONFIG_PACKAGE_luci-i18n-https-dns-proxy-zh-cn=y

#CONFIG_PACKAGE_cloudflared=y
#CONFIG_PACKAGE_luci-app-cloudflared=y
#CONFIG_PACKAGE_luci-i18n-cloudflared-zh-cn=y

CONFIG_PACKAGE_luci-app-rtp2httpd=y
CONFIG_PACKAGE_luci-i18n-rtp2httpd-zh-cn=y

CONFIG_PACKAGE_luci-app-passwall=y

#
# Configuration
#
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Haproxy is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Hysteria is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadow_TLS is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Simple_Obfs is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_SingBox is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray_Geodata is not set
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray_Geoview=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin is not set
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray=y
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray_Plugin is not set
# end of Configuration

CONFIG_PACKAGE_luci-i18n-passwall-zh-cn=y

#CONFIG_PACKAGE_luci-app-eqos-mtk=y
#CONFIG_PACKAGE_luci-i18n-eqos-mtk-zh-cn=y

EOF
