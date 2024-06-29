#!/bin/bash

# Variables
CLUSTER_NAME="MyCluster"
SERVICE_NAME="MyService"
TASK_DEFINITION="MyTaskDef"

# Update the service to use the new task definition
aws ecs update-service --cluster $CLUSTER_NAME --service $SERVICE_NAME --task-definition $TASK_DEFINITION --desired-count 1
