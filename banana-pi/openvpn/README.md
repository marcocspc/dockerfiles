#Description

This builds an openvpn image from ubuntu:18.04.

Works on arm, I'm using this on a Banana Pi.

#Important

- This does not configure any volume to hold openvpn configuration.
- OpenVPN needs to create a tun device to start working.

Therefore, the 'docker run' command should mount bind a directory to store openvpn's configurations and give the container permissions to create tun devices:

```
    docker run --cap-add NET_ADMIN --device <path_to_tun_device_usually_/dev/net/tun> -v <path_to_openvpn_directory_on_host>:/etc/openvpn/ -p <port_to_use_on_host_usually_1194>:1194 <image_name_usually_openvpn>
```

By the way, the "docker build" command should be as follows:

```
    docker build . -t openvpn
```
