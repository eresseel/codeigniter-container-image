FROM alpine:latest

RUN apk update && \
    apk add \
    php \
    php8 \
    php8-cli \
    php8-dev \
    php8-gmp \
    php8-json \
    php8-odbc \
    php8-pspell \
    php8-soap \
    php8-xml \
    php8-bcmath \
    php8-common \
    php8-enchant \
    php8-imap \
    php8-ldap \
    php8-opcache \
    php8-sqlite3 \
    php8-bz2 \
    php8-curl \
    php8-fpm \
    php8-mbstring \
    php8-pgsql \
    php8-xsl \
    php8-cgi \
    php8-dba \
    php8-gd \
    php8-intl \
    php8-mysqli \
    php8-phpdbg \
    php8-snmp \
    php8-tidy \
    php8-zip \
    php8-pecl-imagick \
    php8-pecl-imagick-dev \
    php8-tokenizer

ADD ./usr/local/bin/entrypoint.sh /usr/local/bin/entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
WORKDIR /app