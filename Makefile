.PHONY: show

show:
	docker-compose up --build -d
	docker-compose exec app php -v
	docker-compose down --remove-orphans


.PHONY: direct

direct: PHP_VERSION=latest
direct: TAG_VERSION=$(PHP_VERSION)
direct: ARG_PHP_VERSION=--build-arg PHP_VERSION=$(PHP_VERSION)
direct:
	docker build -t container_tag:$(TAG_VERSION) $(ARG_PHP_VERSION) .
	docker run container_tag:$(TAG_VERSION) php -v
