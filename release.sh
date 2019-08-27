docker build --tag kluevandrew/fpm-xhprof-gui:7.0 --build-arg PHP_VERSION=7.0-fpm .
docker build --tag kluevandrew/fpm-xhprof-gui:7.1 --build-arg PHP_VERSION=7.1-fpm .
docker build --tag kluevandrew/fpm-xhprof-gui:7.2 --build-arg PHP_VERSION=7.2-fpm .
docker build --tag kluevandrew/fpm-xhprof-gui:7.3 --build-arg PHP_VERSION=7.3-fpm .
docker build --tag kluevandrew/fpm-xhprof-gui:7.3.31 --build-arg PHP_VERSION=7.3.31-fpm .
docker build --tag kluevandrew/fpm-xhprof-gui:7.3.8 --build-arg PHP_VERSION=7.3.8-fpm .
docker build --tag kluevandrew/fpm-xhprof-gui:7.4.0beta4 --build-arg PHP_VERSION=7.4.0beta4-fpm .
docker build --tag kluevandrew/fpm-xhprof-gui:latest --build-arg PHP_VERSION=fpm .

docker push kluevandrew/fpm-xhprof-gui:7.0
docker push kluevandrew/fpm-xhprof-gui:7.1
docker push kluevandrew/fpm-xhprof-gui:7.2
docker push kluevandrew/fpm-xhprof-gui:7.3
docker push kluevandrew/fpm-xhprof-gui:7.3.31
docker push kluevandrew/fpm-xhprof-gui:7.3.8
docker push kluevandrew/fpm-xhprof-gui:7.4.0beta4
docker push kluevandrew/fpm-xhprof-gui:latest
