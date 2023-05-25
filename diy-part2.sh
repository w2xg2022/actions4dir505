#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default static IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

# Modify default hostname
sed -i 's/ImmortalWrt/DIR-505/g' package/base-files/files/bin/config_generate

# Modify default timezone & ntp server
sed -i 's/UTC/Asia\/Shanghai/g' package/base-files/files/bin/config_generate
sed -i 's/time1.apple.com/ntp.aliyun.com/g' package/base-files/files/bin/config_generate