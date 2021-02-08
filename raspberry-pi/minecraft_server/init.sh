#!/bin/bash

FILE=$SERVER_DIR/server.jar
cp -u $FILE /minecraft_server/server.jar
chmod 777 $FILE

FILE=$SERVER_DIR/server.properties
cp -u $FILE /minecraft_server/server.properties
chmod 777 $FILE

java -Xms$JVM_MEM -Xmx$JVM_MEM -jar /minecraft_server/server.jar nogui

# Block container exit
tail -f /dev/null
