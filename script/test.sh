#!/bin/sh

set -e

cd "$(dirname "$0")/.."

[ -z "$DEBUG" ] || set -x

echo "==> Running prom-aggregation-gateway tests..."

docker-compose -f ./docker-compose.yml run --rm web go test -cover -race ./cmd/prom-aggregation-gateway/...
