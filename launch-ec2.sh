#!/bin/bash
set -x


aws cloudformation deploy \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file ec2-instance.yaml \
    --stack-name practice-ec2-stack \
    --parameter-overrides \
        KeyName=andy
