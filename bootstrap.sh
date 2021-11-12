#!/bin/bash
set -x


aws cloudformation deploy \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file cloud-formation.yaml \
    --stack-name temporary-stack \
    --parameter-overrides \
        KeyName=andy
