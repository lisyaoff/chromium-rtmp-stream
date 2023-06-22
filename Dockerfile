FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine317

RUN apk add --no-cache chromium

COPY /root /