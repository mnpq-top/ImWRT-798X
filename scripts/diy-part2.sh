#!/bin/bash

#sed -i '/CONFIG_TARGET_mediatek_filogic_DEVICE_/d' .config
#echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cmcc_rax3000m=y" >> .config

cat <<EOF >> .config

#CONFIG_SDK=y
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_luci-proto-wireguard=y

CONFIG_PACKAGE_kmod-nf-flow=y
CONFIG_PACKAGE_kmod-nft-offload=y
CONFIG_PACKAGE_kmod-nf-conntrack-bridge=y
CONFIG_PACKAGE_kmod-br-netfilter=y

CONFIG_PACKAGE_https-dns-proxy=y
CONFIG_PACKAGE_luci-app-https-dns-proxy=y
CONFIG_PACKAGE_luci-i18n-https-dns-proxy-zh-cn=y

CONFIG_PACKAGE_luci-app-airoha-npu=y
CONFIG_PACKAGE_luci-i18n-airoha-npu-zh-cn=y

EOF
