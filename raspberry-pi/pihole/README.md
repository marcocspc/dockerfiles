# Pihole Server Dockerfile

## Description

This builds an openvpn image from pihole/pihole.

Works on arm, I'm using this on a Raspberry Pi.

## Important

The objective of this Dockerfile is to change pihole's default web server port from 80 to 8080.

The 'docker run' command could be done like this:

```
docker run -d \
    --name pihole \
    -p 53:53/tcp -p 53:53/udp \
    -p 8080:8080 \
    -p 60443:443 \
    -e TZ="America/Fortaleza" \
    -v "/some/bind/dir:/etc/pihole/" \
    -v "/some/bind/dir:/etc/dnsmasq.d/" \
    --dns=127.0.0.1 --dns=1.1.1.1 \
    --restart=unless-stopped \
    pihole-8080
```

By the way, the "docker build" command should be as follows:

```
    docker build . -t pihole-8080 
```
