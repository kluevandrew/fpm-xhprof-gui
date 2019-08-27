docker run -it --rm \
  -v "$(pwd)/nginx:/etc/nginx/conf.d" \
  -v "$(pwd)/php-app:/app" \
  -p 127.0.0.1:80:80/tcp \
  -p 127.0.0.1:8080:8080/tcp \
  kluevandrew/fpm-xhprof-gui:7.2
