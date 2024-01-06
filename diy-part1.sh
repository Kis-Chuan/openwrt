#!/bin/bash

# Uncomment a feed source
sed -i 's/^#\(.*openclash\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

// add openclash
echo 'src-git openclash https://github.com/vernesong/OpenClash' >> feeds.conf.default

# add luci-theme-argon
cd openwrt/package/lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git luci-theme-argon
