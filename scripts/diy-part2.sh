#!/bin/bash

#sed -i '/CONFIG_TARGET_mediatek_filogic_DEVICE_/d' .config
#echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cmcc_rax3000m=y" >> .config

cat <<EOF >> .config

#CONFIG_SDK=y
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_luci-proto-wireguard=y

CONFIG_PACKAGE_luci-app-airoha-npu=y
CONFIG_PACKAGE_luci-app-airoha-flowsense=y

EOF
