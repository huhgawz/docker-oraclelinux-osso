# huhgawz/oraclelinux-osso

## Introduction

> NOTE: THIS PROJECT IS IN ACTIVE DEVELOPMENT. SOME THINGS CAN CHANGE RADICALLY.

Dockerized `Oracle Linux` with `Oracle Single Sign On` (`OSSO`).

## Requirements

- [Docker 1.9.x](http://docs.docker.com/engine/installation/mac/)

## Installation

1. Clone the repo: `$ git clone https://github.com/huhgawz/docker-oraclelinux-osso.git && cd docker-oraclelinux-osso`
2. Put `osso.conf` file into the cloned repo folder
3. Build the image: `$ docker build --rm --tag=oraclelinux-osso .`
4. Run a container: `$ docker run --interactive --tty --publish 9778:7777 --name osso oraclelinux-osso`
5. In the running container:
  - Start `OHS`: `$ cd /oracle/Middleware/Oracle_WT1/opmn/bin && ./opmnctl startall`
  - Use the escape sequence `CTRL-P` + `CTRL-Q` in order to detach the tty without exiting the shell. The container will continue to exist in a stopped state once exited (see [Docker Running an Interactive Shell](http://docs.docker.com/engine/userguide/basics/#running-an-interactive-shell)).
6. Verify that everything is working fine:
  - Get the IP address:
    - In Mac OS: `$ docker-machine ip default`
    - In Linux: `$ docker inspect osso | grep IP`
  - Verify that `OHS` is working fine by opening this URL in a browser: http://\<ip-address\>:9778
  - Verify that `OSSO` is working fine by opening this URL in a browser: http://\<ip-address\>:9778/osso
