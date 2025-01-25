FROM alpine:latest

RUN apk add --no-cache kea && \
    mkdir -p /var/run/kea /var/lib/kea /etc/kea

COPY kea-dhcp4.conf /etc/kea/

EXPOSE 67/udp 67/tcp

CMD ["kea-dhcp4", "-c", "/etc/kea/kea-dhcp4.conf"]
