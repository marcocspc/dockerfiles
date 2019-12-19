FROM ubuntu:18.04
MAINTAINER marcocspc

RUN apt update
RUN apt install openvpn

RUN sed -e 's/#AUTOSTART="all"/AUTOSTART="all"/' /etc/default/openvpn > /etc/default/openvpn
