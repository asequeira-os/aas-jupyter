#!/usr/bin/env bash
: ${NOTEBOOK_DIR?set NOTEBOOK_DIR env var to notebook path relative to home dir}

: ${DOCKER_NOTEBOOK_DIR:="/hdir/${NOTEBOOK_DIR}"}

docker-compose --project-directory . -f docker/docker-compose.yml build jupyter

echo "home dir will be mounted at /hdir"
docker-compose --project-directory . -f docker/docker-compose.yml run \
		--rm \
		-v ${HOME}:/hdir \
		-e NOTEBOOK_DIR="${DOCKER_NOTEBOOK_DIR}" \
		--service-ports \
		--name=jupyter \
		jupyter \
		bash

docker-compose  --project-directory . -f docker/docker-compose.yml down

