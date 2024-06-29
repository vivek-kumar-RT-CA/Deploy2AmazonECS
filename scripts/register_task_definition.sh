#!/bin/bash

# Variables
TASK_DEFINITION_FILE="/ecs-task-definitions/task-definition.json"

# Register the new task definition
aws ecs register-task-definition --cli-input-json file://$TASK_DEFINITION_FILE
