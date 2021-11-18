#!/bin/bash
set -x

# ECS optimised AMI
IMAGE_ID=/aws/service/ecs/optimized-ami/amazon-linux-2/recommended/image_id


aws cloudformation deploy \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file server.yaml \
    --stack-name practice-server-stack \
    --parameter-overrides \
        ClusterName=practice-cluster \
        KeyName=andy \
        ImageId=${IMAGE_ID} \
        NetworkStack=practice-stack
