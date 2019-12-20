# Description

This is a repo where I put several useful Dockerfiles for me, feel free to copy and modify without crediting me.

# Hints

## How to create a systemd daemon for a docker container:

- Create a /etc/systemd/system/docker.service-name.service file with this content:

Got code from ` https://dev.to/suntong/autostart-docker-container-with-systemd-5aod `

```

[Unit]
Description=Some Service Container
Requires=docker.service
After=docker.service

[Service]
Restart=always
ExecStart=/usr/bin/docker start -a container-name
ExecStop=/usr/bin/docker stop -t 2 container-name 

[Install]
WantedBy=multi-user.target


```
