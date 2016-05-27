whoami
======

Simple HTTP docker service that prints it's container ID

    $ docker run -d -p 8080:8000 --name whoami -t hypriot/rpi-whoami
    736ab83847bb12dddd8b09969433f3a02d64d5b0be48f7a5c59a594e3a6a3541
    
    $ curl $(hostname --all-ip-addresses | awk '{print $1}'):8080
    I'm 736ab83847bb
