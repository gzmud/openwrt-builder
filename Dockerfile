FROM gzmud/openwrt-buildroot


WORKDIR /root/lede
RUN bash -c "wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript"

CMD bash -c "source /etc/dockerscript ; _ld_updatecnd ; ld_main"
