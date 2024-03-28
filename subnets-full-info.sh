#!/bin/bash
for vpc in $(aws ec2 describe-vpcs | jq ".Vpcs[].VpcId" | tr -d '"')
do
aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpc" | jq
echo "=============================================================="
sleep 1
done
