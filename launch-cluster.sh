#!/bin/bash
set -x


aws cloudformation deploy \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file cluster.yaml \
    --stack-name practice-cluster-stack \
    --parameter-overrides \
        ServerStack=practice-server-stack
