#!/usr/bin/env sh
set -eu

envsubst '${PROXY_HOST} ${PROXY_PORT}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
