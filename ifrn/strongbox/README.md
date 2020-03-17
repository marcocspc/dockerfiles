# OpenVPN Server Dockerfile

## Description

This builds an strongbox image from ubuntu:18.04.

## Important

- This does not configure any volume to hold openvpn configuration.

docker build:

```
docker build . -t strongbox
```

docker run:

```
docker run -d -p 48080:48080 --name strongbox strongbox
```

