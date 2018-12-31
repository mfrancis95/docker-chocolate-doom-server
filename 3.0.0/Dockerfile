FROM mfrancis95/chocolate-doom-build

RUN git clone -b chocolate-doom-3.0.0 --depth 1 https://github.com/chocolate-doom/chocolate-doom && \
    cd chocolate-doom && ./autogen.sh && make

FROM mfrancis95/chocolate-doom-base

COPY --from=0 /chocolate-doom/src/chocolate-doom /usr/local/bin/chocolate-doom