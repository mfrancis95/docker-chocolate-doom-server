FROM alpine:latest

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk update && \
    apk add autoconf automake build-base git sdl2-dev sdl2_mixer-dev sdl2_net-dev && \
    git clone https://github.com/chocolate-doom/chocolate-doom

WORKDIR chocolate-doom

RUN git reset --hard 8777b99 && ./autogen.sh && make

EXPOSE 2342/udp

ENTRYPOINT src/chocolate-doom -dedicated -privateserver