.PHONY: start stop destroy rebuild ssh test logs logs-php

start:
	docker-compose up -d
stop:
	docker-compose stop
destroy:
	docker-compose down
rebuild: destroy start


ssh:
	docker exec -it lib_pagination bash

test:
	docker exec -it lib_pagination bash -c "bin/phpunit --colors=always"

logs:
	docker-compose logs -f
logs-php:
	docker logs lib_pagination -f
