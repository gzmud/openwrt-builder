FROM gzmud/openwrt-buildroot


WORKDIR /root/lede
RUN wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript && bash --init-file /etc/dockerscript && ld_runonce

ENTRYPOINT bash --init-file /etc/dockerscript && ld_run
