FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y autoconf git libsdl2-dev libsdl2-mixer-dev libsdl2-net-dev pkg-config && \
    git clone https://github.com/chocolate-doom/chocolate-doom

WORKDIR chocolate-doom

RUN ./autogen.sh && make && make install && useradd chocolate-doom

USER chocolate-doom

EXPOSE 2342/udp

ENTRYPOINT chocolate-doom -dedicated -privateserver