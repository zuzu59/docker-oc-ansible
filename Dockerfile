FROM ubuntu:bionic

MAINTAINER Christian Zufferey <christian@zufferey.com>
# zf190903.1826

COPY ubuntu_config.sh /root
RUN chmod 755 /root/ubuntu_config.sh
RUN /root/ubuntu_config.sh

#RUN apt update \
#	&& apt install htop

COPY service_start.sh /root
RUN chmod 755 /root/service_start.sh

COPY bashrc.diff /root/bashrc.diff
RUN patch -i /root/bashrc.diff /root/.bashrc




#ENTRYPOINT /root/service_start.sh
ENTRYPOINT /root/service_start.sh
WORKDIR /root


