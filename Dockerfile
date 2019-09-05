
FROM ubuntu:bionic

MAINTAINER Christian Zufferey <christian@zufferey.com>
# zf190905.1458

ARG OC_ANSIBLE_PWD

COPY scripts_img/* /root/
RUN chmod 755 /root/*.sh && OC_ANSIBLE_PWD=$OC_ANSIBLE_PWD /root/image_config.sh


ENTRYPOINT /root/service_start.sh
WORKDIR /root


