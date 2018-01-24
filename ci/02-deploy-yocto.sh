#!/usr/bin/env bash

set -e
set -o pipefail

VERTICAL=${1}
ENVIRONMENT='develop'
STEP=${2:-'00'}

if [ -z "${VERTICAL}" ]; then
    echo "usage: ${0} <vertical> [<step>]"
    exit 1
fi

if [ -z "${AWS_PROFILE}" ]; then
    echo "Set your AWS_PROFILE like this:"
    echo "export AWS_PROFILE=<my-aws-profile>"
    exit 1
fi

bundle exec autostacker24 update \
    --stack "vpc-${VERTICAL}-${ENVIRONMENT}-yocto" \
    --template cf-templates/yocto/${STEP}-*.yaml \
    --param "Vertical=${VERTICAL}" \
    --param "Environment=${ENVIRONMENT}" \
    --param "VPCStackName=vpc-${VERTICAL}-${ENVIRONMENT}"