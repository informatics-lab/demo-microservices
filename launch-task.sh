#!/bin/bash
set -x


aws cloudformation deploy \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file task.yaml \
    --stack-name practice-task-stack \
    --parameter-overrides \
        ServerStack=practice-server-stack
