FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV PHP_VERSION 7.2

# Add ppa, curl and syslogd
RUN apt-get update && apt-get install -y software-properties-common && \
    LC_ALL=C.UTF-8 apt-add-repository ppa:ondrej/php -y && \
    php${PHP_VERSION}-cli

COPY includes /includes
COPY bench.php /bench.php
WORKDIR /
