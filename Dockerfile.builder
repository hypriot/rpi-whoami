FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install -y \
  golang-go \
  --no-install-recommends && \
  rm -rf /var/lib/apt/lists/*

CMD /bin/bash
