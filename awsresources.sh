#!/bin/bash
set -x
aws s3 ls > ResourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> ResourceTracker
aws lambda list-functions >> ResourceTracker

aws iam list-users >> ResourceTracker:q!
