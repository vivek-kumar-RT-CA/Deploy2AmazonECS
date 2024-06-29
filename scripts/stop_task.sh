#!/bin/bash

# Variables
CLUSTER_NAME="MyCluster"
SERVICE_NAME="MyService"

# Update the service to use the old task definition (which will stop the running task)
aws ecs update-service --cluster $CLUSTER_NAME --service $SERVICE_NAME --desired-count 0
