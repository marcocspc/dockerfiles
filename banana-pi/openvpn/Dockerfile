FROM ubuntu:18.04
MAINTAINER marcocspc

RUN apt-get update
RUN apt-get install openvpn -y
ADD /openvpn-run.sh /usr/local/sbin
RUN chmod +x /usr/local/sbin/openvpn-run.sh
RUN echo "America/Fortaleza" > /etc/timezone

CMD openvpn-run.sh 
