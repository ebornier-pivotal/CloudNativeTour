cf cs p-config-server standard config-service
cf update-service -c '{"git": { "uri": "https://github.com/ebornier-pivotal/CloudNativeTour-config.git" }}' config-service

cf cs p-service-registry standard service-registry

cf cs p-circuit-breaker-dashboard standard circuit-breaker

#cf cs elephantsql turtle fortune-db
cf cs p-mysql 100mb fortune-db

#cf create-service cloudamqp lemur scs-rabbit
cf create-service p-rabbitmq standard scs-rabbit


