#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

sed -i 's/Os/O2/g' include/target.mk
sed -i 's,-SNAPSHOT,,g' include/version.mk
sed -i 's,-SNAPSHOT,,g' package/base-files/image-config.in
sed -i 's/192.168.6.1/10.0.0.251/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i '25s/cpu_freq=".*"/cpu_freq="$(mhz | awk -F '\''cpu_MHz='\'' '\''{printf("%.fMHz",$2)}'\'')";/' package/emortal/autocore/files/generic/cpuinfo
sed -i '14s|MT7981_NEW_WOFW_DIR := .*|MT7981_NEW_WOFW_DIR := mt7981-fw-asus-ax57|' package/mtk/drivers/warp/Makefile
sed -i '11s|MT7981_FW_DIR := .*|MT7981_FW_DIR := mt7981-asus-ax57|' package/mtk/drivers/mt_wifi/Makefile
