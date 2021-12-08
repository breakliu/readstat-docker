FROM alpine:3.15

WORKDIR /app

RUN apk add --update --no-cache alpine-sdk autoconf automake build-base clang cmake libtool make m4 zlib-dev git gettext-dev && \
    rm -rf /var/cache/apk/* && \
    git clone https://github.com/jmcnamara/libxlsxwriter.git && \
    cd libxlsxwriter && make -j && make install && \
    cd .. && rm -rf libxlsxwriter && \
    git clone https://github.com/rgamble/libcsv.git && \
    cd libcsv && autoreconf -f -i && ./configure && make -j && make install && \
    cd .. && rm -rf libcsv && \
    git clone https://github.com/WizardMac/ReadStat.git && \
    cd ReadStat && ./autogen.sh && ./configure && make -j && make install && \
    cd .. && rm -rf ReadStat && \
    apk del autoconf automake build-base clang cmake make m4 git

WORKDIR /data

ENTRYPOINT ["/usr/local/bin/readstat"]
