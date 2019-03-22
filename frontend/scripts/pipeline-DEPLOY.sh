#!/bin/bash
curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx

cf api --skip-ssl-validation $CF_API
cf auth $CF_LOGIN $CF_PASSWORD
cf target -o "$CF_ORG" -s "$CF_SPACE"

cf push --no-start
cf set-env frontend BACKEND_URL http://backend-service.default.svc.cluster.local:8080
cf start frontend