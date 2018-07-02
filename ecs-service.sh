#!/bin/bash

ecs-cli compose -f COMPOSE_FILE --project-name SERVICE_NAME  service CREATE \
--target-group-arn ALB_TARGET_ARN \
--container-name FRONT_CONTAINER_NAME \
--container-port CONTAINER_ALB_ACCEPT_PORT \
--cluster CLUSTER_NAME
