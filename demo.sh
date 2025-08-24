#!/bin/bash

############################
# Author : Sneha
# Date : 24/08/2025
# Version : v0
# This script will report the AWS resource usage

# AWS s3
# AWS EC2
# AWS IAM Users

set -x

aws s3 ls

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

aws iam list-users