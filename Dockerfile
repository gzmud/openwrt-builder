FROM gzmud/openwrt-buildroot



RUN useradd --home-dir /builder --shell /bin/bash builder
RUN bash -c "wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript"
RUN bash -c "wget -O /etc/dockerinit https://raw.githubusercontent.com/gzmud/prvscript/master/dockerinit"
RUN chown -R builder:builder /etc/dockerscript /etc/dockerinit /builder

WORKDIR /builder
ENV HOME /builder
ADD . /builder

ENTRYPOINT bash --init-file /etc/dockerinit
