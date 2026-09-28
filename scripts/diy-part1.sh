#!/bin/bash


cat <<EOF >>feeds.conf.default

EOF

git clone https://github.com/luanmuc/luci-app-airoha-npu.git package/luci-app-airoha-npu
#git clone https://github.com/rchen14b/luci-app-airoha-npu.git package/luci-app-airoha-npu
#sed -i 's#../../luci.mk#$(TOPDIR)/feeds/luci/luci.mk#' package/luci-app-airoha-npu/luci-app-airoha-npu/Makefile

