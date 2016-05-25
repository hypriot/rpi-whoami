FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install -y \
  golang-go \
  --no-install-recommends && \
  rm -rf /var/lib/apt/lists/*

ADD . /app
WORKDIR /app
RUN go build -o http
ENV PORT 8000
EXPOSE 8000

CMD ["/app/http"]
