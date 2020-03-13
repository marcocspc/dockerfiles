FROM ubuntu:18.04
MAINTAINER marcocspc

RUN apt-get update && apt-get install openjdk-8-jre wget -y
RUN wget https://github.com/strongbox/strongbox/releases/download/1.0-SNAPSHOT/strongbox-distribution-1.0-SNAPSHOT.deb
RUN dpkg -i strongbox-distribution-1.0-SNAPSHOT.deb
RUN echo "America/Fortaleza"> /etc/timezone
EXPOSE 48080

CMD /opt/strongbox/bin/strongbox console
