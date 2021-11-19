#!/bin/bash

OUTPUT_TEMPLATE=package.yaml

# Template bucket from bootstrap stack
BUCKET_NAME=$(aws cloudformation describe-stacks \
    --stack-name practice-bootstrap-stack \
    --query "Stacks[0].Outputs[0].OutputValue" \
    --output text)

echo ${BUCKET_NAME}


# Store templates in S3 and generate package.yaml
aws cloudformation package \
    --template-file root.yaml \
    --output-template ${OUTPUT_TEMPLATE} \
    --s3-bucket ${BUCKET_NAME}


aws cloudformation deploy \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name practice \
    --template-file ${OUTPUT_TEMPLATE}
