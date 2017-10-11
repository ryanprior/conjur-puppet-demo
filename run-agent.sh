#!/bin/bash

docker-compose run --rm agent

cat <<EOF
=============================
REPORT-Puppet agent ran with:
postgres-password  => $(<tmp/dbpass)
vendor-oauth-token => $(<tmp/token)
=============================
EOF

rm -f tmp/dbpass tmp/token
