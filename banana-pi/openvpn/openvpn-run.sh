#!/bin/sh

cd /etc/openvpn

openvpn server.conf
while true ; do openvpn server.conf ; done >> openvpn.log &

tail -F *.log
