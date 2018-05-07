FROM gzmud/openwrt-buildroot


WORKDIR /root/lede
RUN bash -c "wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript"

ENTRYPOINT bash --init-file /etc/dockerscript -c "ld_main"
