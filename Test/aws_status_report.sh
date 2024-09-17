#!/bin/bash


###########################
#
#Author : Darshan C S
#Date : 17/09/2024
#Version :v1
#
#The script is used to tarack an provide status of the AWS resources
#
############################
#
#
#AWS S3
#AWS Lambda
#AWS EC2
#AWS IAM
#



# To run the scripts in debug mode
set -x
# To handle the error in the scripts
set -e
# To handle the pipefailure even if the last command is valid
set  -o pipefail



# List S3 instances
aws s3 ls

# List EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId[]'

# List AWS Lambda
aws lambda list-functions

#List Iam users
aws iam list-users

