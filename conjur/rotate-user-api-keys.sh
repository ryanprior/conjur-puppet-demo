#!/bin/bash -ex

conjur authn login -u admin -p admin
conjur user rotate_api_key alice@app-users
conjur user rotate_api_key bob@app-users
