FROM kluevandrew/fpm-xhprof-gui:7.3

RUN docker-php-ext-install pdo pdo_mysql

ADD ./app /app
