#!/bin/bash
set -x

# Bucket for cloudformation templates
aws cloudformation deploy \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file bootstrap.yaml \
    --stack-name practice-bootstrap-stack
