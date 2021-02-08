# Samba Dockerfile

## Description

This builds a minecraft server using PaperMC and Debian arm32v7.

This SHOULD work on Raspberry Pi, I've tested it on a Banana Pro.

## Important

- Before building the image, configure your server editing server.properties file! 
- You **MUST** set the EULA environment variable to TRUE if you want to use the server. 
- You can set the environment variables JVM_MEM and PAPER_MC_LINK. To see the default values or modify them, take a look into the Dockerfile. 
- To get the most recent PAPER_MC_LINK go to https://papermc.io/downloads.

Therefore, the 'docker run' command should be like this:  

The "docker build" command should be as follows:

```
    docker build . -t minecraft_server  
```

If you want to customize memory usage (using 1GB as an example):

```
    docker build -e EULA=true -e JVM_MEM="1024M" . -t minecraft_server  
```

To run the image, after building it, do:

```
    docker run -d -v <your_dir>:/minecraft_server \
               -p <host_port>:25565 \
               minecraft_server
```


