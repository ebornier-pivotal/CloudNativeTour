#!/usr/bin/env bash

cf create-service p-config-server standard config-service \
  -c '{"git": { "uri": "https://github.com/ebornier-pivotal/CloudNativeTour-config.git" }}'

cf create-service p-service-registry standard service-registry

cf create-service p-circuit-breaker-dashboard standard circuit-breaker

cf create-service p-rabbitmq standard scs-rabbit
