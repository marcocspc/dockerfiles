FROM ubuntu:18.04
MAINTAINER marcocspc

RUN apt-get update
RUN apt-get install openvpn -y

RUN sed -e 's/#AUTOSTART="all"/AUTOSTART="all"/' /etc/default/openvpn > /etc/default/openvpn

ENTRYPOINT service openvpn start
