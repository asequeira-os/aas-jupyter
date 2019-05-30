#!/usr/bin/env bash
docker-compose --project-directory . -f docker/docker-compose.yml build jupyter

echo "home dir will be mounted at /hdir"
docker-compose --project-directory . -f docker/docker-compose.yml run \
		--rm \
		-v ${HOME}:/hdir \
		--service-ports \
		--name=jupyter \
		jupyter \
		bash

docker-compose  --project-directory . -f docker/docker-compose.yml down

