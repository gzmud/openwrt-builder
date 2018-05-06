FROM gzmud/openwrt-buildroot

ADD /script/ldcmd /root/ldcmd
WORKDIR /root/lede

CMD bash --init-file /root/ldcmd
