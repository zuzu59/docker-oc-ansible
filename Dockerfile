
FROM ubuntu:bionic

MAINTAINER Christian Zufferey <christian@zufferey.com>
# zf190904.1526

COPY scripts_img/* /root/
RUN chmod 755 /root/*.sh && DEBIAN_FRONTEND=noninteractive ; /root/image_config.sh


ENTRYPOINT /root/service_start.sh
WORKDIR /root


