#!/bin/bash
curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx

#
# login to IBM Cloud using the API key targeting a region and then target CFEE org and space.
#
ibmcloud login --apikey "$API_KEY" 
ibmcloud target --cf-api "$CFEE_API_ENDPOINT" -o "$CFEE_ORG" -s "$CFEE_SPACE"

ibmcloud cf push --no-start
ibmcloud cf set-env frontend BACKEND_URL http://backend-service.default.svc.cluster.local:8080
ibmcloud cf start frontend