sed -i 's/Os/O2/g' include/target.mk
sed -i 's,-SNAPSHOT,,g' include/version.mk
sed -i 's,-SNAPSHOT,,g' package/base-files/image-config.in
sed -i -e 's/192.168.6.1/10.0.0.251/g' -e 's/ImmortalWrt/EnWrt/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile
sed -i '25s/cpu_freq=".*"/cpu_freq="$(mhz | awk -F '\''cpu_MHz='\'' '\''{printf("%.fMHz",$2)}'\'')";/' package/emortal/autocore/files/generic/cpuinfo
sed -i \
-e "s#^SSID1=.*#SSID1=WYH-WIFI2.4#g" \
-e "s#^WPAPSK1=.*#WPAPSK1=zz123456#g" \
-e "s#^AuthMode=.*#AuthMode=WPA2PSKWPA3PSK#g" \
-e "s#^PMFMFPC=.*#PMFMFPC=1#g" \
-e "s#^RekeyMethod=.*#RekeyMethod=TIME#g" \
package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b0.dat
sed -i \
-e "s#^SSID1=.*#SSID1=WYH-WIFI#g" \
-e "s#^WPAPSK1=.*#WPAPSK1=zz123456#g" \
-e "s#^AuthMode=.*#AuthMode=WPA2PSKWPA3PSK#g" \
-e "s#^PMFMFPC=.*#PMFMFPC=1#g" \
-e "s#^RekeyMethod=.*#RekeyMethod=TIME#g" \
package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b1.dat
