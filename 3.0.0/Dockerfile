FROM mfrancis95/chocolate-doom-build

RUN git clone https://github.com/chocolate-doom/chocolate-doom

WORKDIR chocolate-doom

RUN git reset --hard 8777b99 && ./autogen.sh && make install

FROM mfrancis95/chocolate-doom-base

COPY --from=0 /usr/local/bin/chocolate-doom /usr/local/bin/chocolate-doom