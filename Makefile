
compile-builder:
	docker build -f Dockerfile.builder -t whoami-builder .

compile: compile-builder
	docker run --rm -v $(shell pwd):/go/src/http whoami-builder /bin/bash -c "cd /go/src/http && CGO_ENABLED=0 go build -a --installsuffix cgo --ldflags='-s'"

compile-shell: compile-builder
	docker run -ti --rm -v $(shell pwd):/go/src/webserver whoami-builder /bin/bash

build: compile
	docker build -t hypriot/rpi-whoami .

