#!/bin/bash
echo "Getting vpc information....!!!"
aws ec2 describe-vpcs | jq ".Vpcs[].VpcId"
