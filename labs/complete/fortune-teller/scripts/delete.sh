cf delete fortune-service -f
cf delete fortune-ui -f
cf delete config-server -f
cf delete eureka -f
cf delete hystrix-dashboard -f

cf ds config-service -f
cf ds service-registry -f
cf ds fortune-db -f
cf ds circuit-breaker -f

cf delete-orphaned-routes -f


