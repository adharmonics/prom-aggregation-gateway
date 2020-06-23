#!/bin/sh

set -e

cd "$(dirname "$0")/.."

echo "==> Building docker container and initializing everything..."
docker-compose -f ./docker-compose.yml down --rmi=local --volumes --remove-orphans
docker-compose -f ./docker-compose.yml build

echo "==> App is now ready to go!"
