#!/bin/bash
set -x

TEMPLATE_FILE=${1}

aws cloudformation deploy \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file ${TEMPLATE_FILE} \
    --stack-name practice-stack \
    --parameter-overrides \
        KeyName=andy
