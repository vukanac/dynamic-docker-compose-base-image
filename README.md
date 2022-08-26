# Dynamic base image

Pass ARG from Makefile trought docker-compose to Dockerfile.


```shell
$ make show PHP_VERSION=7.4 && make show PHP_VERSION=8.1
...
PHP 7.4.30 (cli) (built: Aug 23 2022 15:21:20) ( NTS )
...
PHP 8.1.9 (cli) (built: Aug 23 2022 13:59:34) (NTS)
...
```


## Docker build the latest version

```shell
$ make direct
docker build -t container_tag:latest --build-arg PHP_VERSION=latest .
...
docker run container_tag:latest php -v
PHP 8.1.9 (cli) (built: Aug 23 2022 13:59:34) (NTS)
...
```

## Docker build a specific version

```shell
$ make direct PHP_VERSION=7.4
docker build -t container_tag:latest --build-arg PHP_VERSION=latest .
...
docker run container_tag:7.4 php -v
PHP 7.4.30 (cli) (built: Aug 23 2022 15:21:20) ( NTS )
...
```
