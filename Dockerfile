FROM gzmud/openwrt-buildroot

RUN ap-get update && apt-get install -y wget
ADD /scritp/ldcmd /root/ldcmd
WORKDIR /root/lede

CMD bash --init-file /root/ldcmd
