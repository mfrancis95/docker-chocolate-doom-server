FROM alpine:latest

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk update && \
    apk add autoconf automake build-base git sdl2-dev sdl2_mixer-dev sdl2_net-dev && \
    git clone https://github.com/fabiangreffrath/crispy-doom

WORKDIR crispy-doom

RUN ./autogen.sh && make

EXPOSE 2342/udp

ENTRYPOINT src/crispy-doom -dedicated -privateserver