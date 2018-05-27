FROM gzmud/openwrt-buildroot



RUN bash -c "wget -O /etc/dockerscript https://raw.githubusercontent.com/gzmud/prvscript/master/dockerscript"
RUN bash -c "wget -O /etc/dockerinit https://raw.githubusercontent.com/gzmud/prvscript/master/dockerinit"
RUN  useradd --home-dir /builder --shell /bin/bash -m builder
RUN chown -R builder /etc/dockerscript /etc/dockerinit /builder
RUN apt-get update && apt-get install sudo

WORKDIR /builder
ENV HOME /builder
ADD . /builder

ENTRYPOINT sudo -iu builder bash --init-file /etc/dockerinit
