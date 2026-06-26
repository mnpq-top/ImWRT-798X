#!/bin/bash
#
# 版权所有 (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 这是一个自由软件，根据 MIT 许可证授权。
# 详细信息请参见 /LICENSE。
#
# https://github.com/P3TERX/Actions-OpenWrt

# 预装
cat <<EOF >> .config

CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_kmod-tls=y
CONFIG_PACKAGE_kmod-usb-net-rtl8152-vendor=y

CONFIG_PACKAGE_docker=y
CONFIG_PACKAGE_docker-compose=y
CONFIG_PACKAGE_dockerd=y

CONFIG_PACKAGE_luci-proto-wireguard=y

CONFIG_PACKAGE_mosquitto-ssl=y

CONFIG_PACKAGE_adguardhome=y

CONFIG_PACKAGE_cloudflared=y
CONFIG_PACKAGE_luci-app-cloudflared=y
CONFIG_PACKAGE_luci-i18n-cloudflared-zh-cn=y

CONFIG_PACKAGE_omcproxy=y

CONFIG_PACKAGE_rtp2httpd=y
CONFIG_PACKAGE_luci-app-rtp2httpd=y
CONFIG_PACKAGE_luci-i18n-rtp2httpd-zh-cn=y

CONFIG_PACKAGE_luci-app-wol=y
CONFIG_PACKAGE_luci-i18n-wol-zh-cn=y

EOF

