run:
	docker-compose -f ./docker-compose.yaml up -d

stop:
	docker-compose -f ./docker-compose.yaml down

restart: stop run

sh:
	docker exec -it $$(docker container ls -a | grep 'qwertylearner' | awk '{print $$1}') bash

log:
	docker logs -f --tail 100 $$(docker container ls -a | grep 'qwertylearner' | awk '{print $$1}')