#!/bin/bash

########################
# Author: Baylon
# Date: 13th-March
#
# Version: v1
#
# This reports the usage of AWS resoursces on a daily basis
########################

set -x

# AWS EC2
# AWS VPC
# AWS RDS
# AWS EKS
# AWS LAMBDA
# AWS IAM USERS
# AWS S3

# Lists EC2 Instances
echo "print list of instances"
aws ec2 describe-instances >> ResourceTracker

# Describes all of your VPC
echo "print list of VPC's"
aws ec2 describe-vpcs >> ResourceTracker

# Lists  Database instances
echo "print list of RDS databse"
aws rds describe-db-instances >> ResourceTracker

# Lists Database clusters
echo "print list of RDS clusters"
aws rds describe-db-clusters >> ResourceTracker

# Gives Details on a Kubernetes Cluster
echo "print details of kubernetes cluster"
aws eks describe-cluster --name example >> ResourceTracker

# Lists Lambda
echo "print list of lambda"
aws lambda list-functions >> ResourceTracker

# Lists IAM Users
echo "print list of Iam Users"
aws iam list-users >> ResourceTracker

# Lists S3 buckets
echo "print list of S3 buckets"
aws s3 ls >> ResourceTracker

