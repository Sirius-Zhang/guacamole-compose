FROM alpine:latest

RUN mkdir /data
COPY ../frpc /data/frpc
COPY ./frpc.ini /data/frpc.ini

CMD [ "/data/frpc", "-c", "/data/frpc.ini" ]