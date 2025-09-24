FROM ubuntu:22.04

RUN apt-get update && apt-get install -y gcc xinetd

WORKDIR /root

COPY . /root

RUN chmod +x build.sh start.sh && \
    ./build.sh && \
    mv ctf.xinetd /etc/xinetd.d/ctf

CMD ["/root/start.sh"]

EXPOSE 9999
