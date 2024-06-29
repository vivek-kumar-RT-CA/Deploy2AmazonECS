#!/bin/bash

# Variables
ECR_REPO_NAME="demorepo01"
REGION="us-west-2"
CONTAINER_NAME="webserver01"
TASK_DEFINITION_FILE="/ecs-task-definitions/task-definition.json"

# Get the latest image tag from ECR
IMAGE_TAG=$(aws ecr list-images --repository-name $ECR_REPO_NAME --region $REGION --query 'imageIds[*].imageTag' --output text | sort -r | head -n 1)

# Update the task definition with the latest image tag
sed -i "s|latest|$IMAGE_TAG|g" $TASK_DEFINITION_FILE
