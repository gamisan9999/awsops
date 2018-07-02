#!/bin/bash
# example
export ECS_PROFILE=$1
ecs-cli up  --security-group SGID,SGID \
--instance-type INSTANCE_TYPE \
--capability-iam \
--keypair KEYPAIR \
--vpc VPCID \
--subnets SUBNETID,SUBNETID \
--size HOSTCOUNT --cluster CLUSTERNAME
