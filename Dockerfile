FROM gzmud/openwrt-buildroot


WORKDIR /root/lede
RUN bash -c "wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript"
RUN bash -c "wget -O /etc/dockerinit https://raw.githubusercontent.com/gzmud/prvscript/master/dockerinit"

ENTRYPOINT bash --init-file /etc/dockerinit
