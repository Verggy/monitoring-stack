#!/usr/bin/env bash

set -e

GRAFANA_DIR="./data/grafana"
# Handle grafana permissions
if [ ! -d "$GRAFANA_DIR" ]; then
    mkdir -p "$GRAFANA_DIR"
fi
sudo chown -R 472:472 "$GRAFANA_DIR"

echo "Done."

docker compose up -d
