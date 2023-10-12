FROM alpine:latest

RUN mkdir /data
COPY ../frpc /data/frpc
COPY ./frpc.ini /data/frpc.ini
COPY ./frpc.toml /data/frpc.toml

ENV FRP_SERVER_ADDR 1.1.1.1
ENV FRP_SERVER_PORT 15000
ENV FRP_AUTH_TOKEN *********

ENV FRP_LOCAL_IP 127.0.0.1
ENV FRP_LOCAL_PORT 22

CMD [ "/data/frpc", "-c", "/data/frpc.toml" ]