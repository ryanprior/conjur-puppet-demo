#!/bin/bash -x

docker-compose exec client \
               conjur hostfactory tokens create app \
    | jq -r '.[0].token'
