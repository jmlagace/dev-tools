DOCKER_BUILD_BASE := m2i3/pipeline-tools

ruby-3:
	docker pull ruby:3
	docker build --build-arg BASE_IMAGE="ruby:3" -t ${DOCKER_BUILD_BASE}:ruby-3 .
	docker push ${DOCKER_BUILD_BASE}:ruby-3
ruby-2:
	docker pull ruby:2
	docker build --build-arg BASE_IMAGE="ruby:2" -t ${DOCKER_BUILD_BASE}:ruby-2 .
	docker push ${DOCKER_BUILD_BASE}:ruby-2
	
ruby: ruby-3 ruby-2

php-8:
	docker pull php:8-cli-alpine
	docker build --build-arg BASE_IMAGE="php:8-cli-alpine" -t ${DOCKER_BUILD_BASE}:php-8 .
	docker push ${DOCKER_BUILD_BASE}:php-8
php-7:
	docker pull php:7-cli-alpine
	docker build --build-arg BASE_IMAGE="php:7-cli-alpine" -t ${DOCKER_BUILD_BASE}:php-7 .
	docker push ${DOCKER_BUILD_BASE}:php-7
php-7.1:
	docker pull php:7.1-cli-alpine
	docker build --build-arg BASE_IMAGE="php:7.1-cli-alpine" -t ${DOCKER_BUILD_BASE}:php-7.1 .
	docker push ${DOCKER_BUILD_BASE}:php-7.1
	
php-5.4:
	docker pull php:5.4-cli
	docker build --build-arg BASE_IMAGE="php:5.4-cli" -t ${DOCKER_BUILD_BASE}:php-5.4 .
	docker push ${DOCKER_BUILD_BASE}:php-5.4


php: php-8 php-7 php-7.1 php-5.4
	
build: ruby php