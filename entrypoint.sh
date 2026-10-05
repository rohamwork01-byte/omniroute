#!/bin/sh
set -eu

DATA_DIR="${DATA_DIR:-/app/data}"

mkdir -p "$DATA_DIR"
chown -R 1000:1000 "$DATA_DIR"

exec su-exec 1000:1000 "$@"
