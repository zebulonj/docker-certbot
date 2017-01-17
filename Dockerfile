FROM debian:jessie

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list
RUN apt-get update \
    && apt-get install -y \
        certbot -t jessie-backports
    && rm -rf /var/lib/apt/lists/*

CMD ["certbot", "certonly"]
