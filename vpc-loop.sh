#!/bin/bash
for vpc in $(aws ec2 describe-vpcs | jq ."Vpcs[].VpcId" | tr -d '"')
do
echo "The value of VPC ID is $vpc"
sleep 1
done
