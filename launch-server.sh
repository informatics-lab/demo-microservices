#!/bin/bash
set -x


aws cloudformation deploy \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file server.yaml \
    --stack-name practice-server-stack \
    --parameter-overrides \
        KeyName=andy \
        NetworkStack=practice-stack
