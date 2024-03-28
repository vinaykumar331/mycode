#!/bin/bash
REGIONS=$@
for REGION in $REGIONS
do
echo "generating region information for $REGION"
aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId"
echo "****************************************************"
done
echo "you have given $# regions"
