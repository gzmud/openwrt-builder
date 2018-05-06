FROM gzmud/openwrt-buildroot

ADD /scritp/ldcmd /root/ldcmd
WORKDIR /root/lede

CMD bash --init-file /root/ldcmd
