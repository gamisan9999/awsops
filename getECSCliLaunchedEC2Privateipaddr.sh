#!/bin/bash
# ecs-cliで起動したclusterのPrivateIPを取得する
# 第一引数: stack-nameの末尾文字列を指定する
EC2_NAME_TAG_ENV=$1
REGION=ap-northeast-1
case $1 in
	"dev")
		ENVIRONMENT=dev ;;
	"stg")
		ENVIRONMENT=stg ;;
	"prod")
		ENVIRONMENT=prod ;;
	*)
		echo "get Docker host private ipaddress"
		echo "Usage: `basename $0` dev | stg | prod"
		exit 0 ;;
esac
aws ec2 describe-instances --filters "Name=tag-key,Values=aws:cloudformation:stack-name" \
"Name=tag-value,Values=amazon-ecs-cli-setup-${ENVIRONMENT}" \
--query 'Reservations[].Instances[].PrivateIpAddress' \
--region ${REGION}
