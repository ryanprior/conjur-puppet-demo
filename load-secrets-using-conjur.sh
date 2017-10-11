#!/bin/bash

cp conjur/secrets.pp puppet/manifests/
docker-compose exec client /demo/load-secrets.sh
