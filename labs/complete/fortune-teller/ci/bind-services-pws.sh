#!/bin/bash 
cf login -u $CF_USERNAME -p $CF_PASSWORD -a $CF_API -o $CF_ORGANIZATION -s $CF_SPACE --skip-ssl-validation

#cf bind-service cnt-fortune-teller-fortune-service cnt-fortune-db
cf bind-service cnt-fortune-teller-fortune-service cnt-service-registry
cf bind-service cnt-fortune-teller-ui cnt-service-registry

#cf bind-service cnt-fortune-teller-ui cnt-config-server

cf set-env cnt-fortune-teller-fortune-service CF_TARGET https://api.run.pivotal.io
cf set-env cnt-fortune-teller-ui CF_TARGET https://api.run.pivotal.io

cf restage cnt-fortune-teller-fortune-service
cf restage cnt-fortune-teller-ui
