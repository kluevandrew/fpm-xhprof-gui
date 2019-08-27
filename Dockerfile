ARG PHP_VERSION

FROM php:${PHP_VERSION}

WORKDIR /
COPY ./configs /configs

RUN apt-get update && \
    apt-get install -y \
        nginx \
        git \
        zlib1g-dev \
        zip \
        wget \
        gnupg2 \
        supervisor \
        && \
    wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add - && \
    echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list && \
    apt-get update && \
    apt-get install -y \
        mongodb-org \
        && \
    mkdir -p /run/nginx && \
    mkdir -p /data/db && \
    rm -rf /etc/nginx/sites-enabled/default && \
    git clone https://github.com/tideways/php-xhprof-extension.git && \
    git clone https://github.com/perftools/xhgui.git && \
    chmod -R 0777 xhgui/cache && \
    docker-php-ext-install /php-xhprof-extension/ && \
    pecl install mongodb && \
    echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/mongodb.ini && \
    cd /xhgui && \
    php install.php && \
    echo "auto_prepend_file=/xhgui/external/header.php" > /usr/local/etc/php/conf.d/xhgui.ini && \
    cp -f /configs/xhgui.conf /etc/nginx/sites-enabled/xhgui.conf && \
    cp -f /configs/config.php /xhgui/config/config.php && \
    cp -f /configs/supervisord.conf /etc/supervisord.conf && \
    rm -rf /configs && \
    rm -rf /php-xhprof-extension && \
    rm -rf /var/lib/apt/lists/* && \
    pecl clear-cache

EXPOSE 9000 80

CMD ["supervisord", "-n"]
