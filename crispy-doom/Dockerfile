FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y autoconf git libsdl2-dev libsdl2-mixer-dev libsdl2-net-dev pkg-config && \
    git clone https://github.com/fabiangreffrath/crispy-doom

WORKDIR crispy-doom

RUN ./autogen.sh && make && make install && useradd crispy-doom

USER crispy-doom

EXPOSE 2342/udp

ENTRYPOINT crispy-doom -dedicated -privateserver