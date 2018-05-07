FROM gzmud/openwrt-buildroot


WORKDIR /root/lede
RUN bash -c "wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript && . /etc/dockerscript && ld_runonce"

ENTRYPOINT bash --init-file /etc/dockerscript && ld_run
