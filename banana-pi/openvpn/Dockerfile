FROM ubuntu:18.04
MAINTAINER marcocspc

RUN apt-get update
RUN apt-get install openvpn -y
RUN rm -rf /etc/openvpn/*

ENTRYPOINT /usr/sbin/openvpn /etc/openvpn/server.conf --daemon && bash 
