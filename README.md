whoami
======

Simple HTTP docker service that prints it's container ID

### Usage on single node (without Docker Swarm mode)

```
$ docker run -d -p 8080:8000 --name whoami -t hypriot/rpi-whoami
736ab83847bb12dddd8b09969433f3a02d64d5b0be48f7a5c59a594e3a6a3541
    
$ curl $(hostname --all-ip-addresses | awk '{print $1}'):8080
I'm 736ab83847bb
```

### Usage on several nodes (with Docker Swarm mode enabled)
```
$ docker service create --name whoami --publish 8080:8000 hypriot/rpi-whoami
2b8w0x7ek34iyobp7re0jlqgb

$ curl -4 localhost:8080
I'm e6d4a6598902
```
