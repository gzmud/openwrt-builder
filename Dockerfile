FROM gzmud/openwrt-buildroot


WORKDIR /root/lede
RUN useradd --home-dir /builder --shell /bin/bash --no-create-home builder && chown -R builder:builder build
RUN bash -c "wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript"
RUN bash -c "wget -O /etc/dockerinit https://raw.githubusercontent.com/gzmud/prvscript/master/dockerinit"
RUN chown -R builder:builder /etc/dockerscript /etc/dockerinit

WORKDIR /buildsystem
ENV HOME /buildsystem
ADD . /buildsystem
ENTRYPOINT bash --init-file /etc/dockerinit
