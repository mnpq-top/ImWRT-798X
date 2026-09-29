#!/bin/bash

#sed -i '/CONFIG_TARGET_mediatek_filogic_DEVICE_/d' .config
#echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cmcc_rax3000m=y" >> .config

cat <<EOF >> .config

#CONFIG_SDK=y
CONFIG_PACKAGE_nano=y

CONFIG_PACKAGE_kmod-sched-cake=y
CONFIG_PACKAGE_kmod-tun=y
CONFIG_PACKAGE_kmod-tcp-bbr=y
CONFIG_PACKAGE_kmod-nf-flow=y
CONFIG_PACKAGE_kmod-nft-bridge=y
CONFIG_PACKAGE_kmod-nft-tproxy=y
CONFIG_PACKAGE_kmod-nft-offload=y
CONFIG_PACKAGE_kmod-nf-conntrack-bridge=y

CONFIG_PACKAGE_kmod-wireguard=y
CONFIG_PACKAGE_luci-proto-wireguard=y

CONFIG_PACKAGE_luci-app-airoha-npu=y

EOF
