FROM kasmweb/chromium:1.19.0-rolling-daily

USER root

RUN apt-get update && \
    apt-get install -y socat

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
