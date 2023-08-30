#!/bin/bash

#########################
# Author: tim
# Date: 30.08.23
#
# Version: v1
#
#
# This script will report the AWS resource usage
########################

# debug on
set -x

# AWS S3 
# AWS EC2
# AWS Lambda
# AWS IAM user

# list s3 buckets
echo "Print s3"
aws s3 ls > resourceTracker 

# list EC2 Instance
echo "Print EC2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print lambda"
aws lambda list-functions >> resourceTracker:q!

# list IAM users
echo "Print IAM users"
aws iam list-users
