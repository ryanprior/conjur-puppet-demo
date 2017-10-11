#!/bin/bash

conjur authn login -u admin -p admin
conjur variable values add app/postgres-password 'wake bad operator pure'
conjur variable values add app/vendor-oauth-token '5262e7a7-4cfd-479d-833c-cbace96a32d3'
