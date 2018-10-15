FROM mfrancis95/chocolate-doom-build

RUN git clone -b chocolate-doom-3.0.0 https://github.com/chocolate-doom/chocolate-doom

WORKDIR chocolate-doom

RUN ./autogen.sh && make install

FROM mfrancis95/chocolate-doom-base

COPY --from=0 /usr/local/bin/chocolate-doom /usr/local/bin/chocolate-doom