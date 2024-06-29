#!/bin/bash

# Variables
CLUSTER_NAME="MyCluster"
SERVICE_NAME="MyService"

# Check the service status
SERVICE_STATUS=$(aws ecs describe-services --cluster $CLUSTER_NAME --services $SERVICE_NAME --query 'services[0].status' --output text)

if [ "$SERVICE_STATUS" != "ACTIVE" ]; then
  echo "Service is not running correctly."
  exit 1
fi
