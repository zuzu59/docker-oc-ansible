
FROM ubuntu:bionic

MAINTAINER Christian Zufferey <christian@zufferey.com>
# zf190904.1109

COPY scripts_img/* /root/
RUN chmod 755 /root/*.sh && /root/ubuntu_config.sh

#COPY service_start.sh /root
#RUN chmod 755 /root/service_start.sh

#COPY bashrc.diff /root/bashrc.diff
#RUN patch -i /root/bashrc.diff /root/.bashrc




ENTRYPOINT /root/service_start.sh
WORKDIR /root


