FROM arm32v7/debian
MAINTAINER marcocspc

RUN apt-get update
RUN apt-get install -y default-jdk wget

ENV JVM_MEM="512M"
ENV PAPER_MC_LINK="https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/465/downloads/paper-1.16.5-465.jar"
ENV EULA="false"
ENV SERVER_DIR=/server_defaults

RUN mkdir $SERVER_DIR
RUN mkdir minecraft_server 
RUN wget -O "$SERVER_DIR/server.jar" $PAPER_MC_LINK
RUN chmod +x $SERVER_DIR/server.jar

RUN echo "eula=$EULA" > eula.txt

COPY server.properties $SERVER_DIR/server.properties
RUN chmod 777 $SERVER_DIR/server.properties

COPY init.sh /usr/bin/init.sh
RUN chmod 777 /usr/bin/init.sh

EXPOSE 25565 25575
VOLUME ["/minecraft_server"]

CMD ["/usr/bin/init.sh"]
