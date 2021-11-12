#!/bin/bash
set -x


aws cloudformation deploy \
    --template-file cloud-formation.yaml \
    --stack-name temporary-stack \
    --parameter-overrides \
        KeyName=andy
