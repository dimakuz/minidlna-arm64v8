FROM arm64v8/alpine:3.8
LABEL image=dimakuz/minidlna:arm64v8
ENV ARCH arm64v8
MAINTAINER Dima Kuznetsov "dmitrykuzn@gmail.com"

RUN apk update && \
    apk add minidlna

ENTRYPOINT ["minidlnad", "-R", "-S"]
