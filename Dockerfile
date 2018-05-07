FROM gzmud/openwrt-buildroot


ADD /scritp/ldcmd /root/ldcmd
WORKDIR /root/lede
RUN wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript && . /etc/dockerscript && ld_runonce

ENTRYPOINT bash --init-file /etc/dockerscript && ld_run
