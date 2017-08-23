FROM ethereum/client-go:v1.6.7

EXPOSE 8545
EXPOSE 30303

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

ENTRYPOINT /root/start.sh
