# Samba Dockerfile

Credits to Mossop for original code. You can see it on:

```

https://github.com/Mossop/docker-samba

```

## Description

This builds a samba image from ubuntu:18.04.

Works on arm, I'm using this on a Raspberry Pi.

## Important

- This needs to use network host, so samba can recognize networks and expose the right ports; 
- Samba needs to read passwd and group to know which users and groups are on the system; 
- You should mount the desired volume on /mnt;
- You should have your config file somewhere on the host file system. 

Therefore, the 'docker run' command should be like this: (thanks again Mossop for this) 

```
    docker run --network host \
           -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro \
           -v <configdir>:/etc/samba \
           -v /mnt:/mnt -v /home:/home
```

By the way, the "docker build" command should be as follows:

```
    docker build . -t samba
```
