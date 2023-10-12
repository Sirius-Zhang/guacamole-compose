FROM alpine:latest

RUN mkdir -p /data

COPY frps /data/frps
COPY frps.ini /data/frps.ini

CMD ["/data/frps", "-c", "/data/frps.ini"]