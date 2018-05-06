FROM gzmud/openwrt-buildroot

RUN apt-get update && apt-get install -y wget
ADD /scritp/ldcmd /root/ldcmd
WORKDIR /root/lede

CMD bash --init-file /root/ldcmd
