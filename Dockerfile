FROM gzmud/openwrt-buildroot


WORKDIR /root/lede
RUN wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript && \
    bash --rcfile /etc/dockerscript -c ld_runonce

ENTRYPOINT bash --init-file /etc/dockerscript && ld_run
