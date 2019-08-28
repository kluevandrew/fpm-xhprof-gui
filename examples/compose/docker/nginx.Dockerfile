FROM nginx:1.17.3-alpine

ADD ./app /app

COPY ./docker/site.conf /etc/nginx/conf.d/default.conf
