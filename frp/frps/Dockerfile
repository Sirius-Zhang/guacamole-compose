FROM alpine:latest

RUN mkdir -p /data

COPY frps /data/frps
COPY frps.ini /data/frps.ini
COPY frps.toml /data/frps.toml

ENV FRP_SERVER_PORT 15000
ENV FRP_AUTH_TOKEN *********

CMD ["/data/frps", "-c", "/data/frps.toml"]