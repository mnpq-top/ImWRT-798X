#!/bin/bash

#sed -i '/CONFIG_TARGET_mediatek_filogic_DEVICE_/d' .config
#echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cmcc_rax3000m=y" >> .config

cat <<EOF >> .config

CONFIG_SDK=y

CONFIG_PACKAGE_luci-proto-wireguard=y

CONFIG_PACKAGE_https-dns-proxy=y
CONFIG_PACKAGE_luci-app-https-dns-proxy=y
CONFIG_PACKAGE_luci-i18n-https-dns-proxy-zh-cn=y

CONFIG_PACKAGE_luci-app-airoha-npu=y
CONFIG_PACKAGE_luci-i18n-airoha-npu-zh-cn=y

CONFIG_PACKAGE_airoha-en7581-npu-firmware=y
CONFIG_PACKAGE_airoha-en8811h-firmware=y
#
# PON
#
CONFIG_PACKAGE_kmod-airoha-en7572=y
CONFIG_PACKAGE_kmod-airoha-pon-frontend=y
CONFIG_PACKAGE_kmod-airoha-xpon=y
CONFIG_PACKAGE_airoha-pon-debug=y
CONFIG_PACKAGE_airoha-ponctl=y
CONFIG_PACKAGE_airoha-pond=y
EOF
