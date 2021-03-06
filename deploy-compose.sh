#! /bin/bash
NETWORK_NAME='spring'

set -x

docker network create ${NETWORK_NAME}

docker-compose up -d --build --force-recreate

sleep 210

docker exec postgres bash -c './dump.sh'
