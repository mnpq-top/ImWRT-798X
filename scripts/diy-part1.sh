#!/bin/bash


cat <<EOF >>feeds.conf.default

#src-git mypackages https://github.com/yahuisme/packages.git;main

EOF

git clone https://github.com/luanmuc/luci-app-airoha-npu.git package/luci-app-airoha-npu

