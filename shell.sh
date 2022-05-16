#!/bin/bash

set -euo pipefail

# This assumes you have a .env file, with the environment variables named for
# easy use in terraform code.
source .env

# This fixes problems like [this](https://stackoverflow.com/questions/65824304/aws-cli-returns-json-with-control-codes-making-jq-fail)
if [ -t 1 ]; then
  usetty=-it
else
  usetty=
fi

docker run --rm \
  -e AWS_ACCESS_KEY_ID=$TF_VAR_aws_access_key \
  -e AWS_SECRET_ACCESS_KEY=$TF_VAR_aws_secret_key \
  -e AWS_REGION=$TF_VAR_aws_region \
  -w /aws \
  -v ~/.aws:/root/.aws \
  -v $(pwd):/aws \
  $usetty digitalronin/aws-tf bash
