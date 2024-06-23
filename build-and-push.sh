#!/bin/sh
export AWS_ACCOUNT=$(aws sts get-caller-identity --query "Account" --output text)                                                                                                                     
export AWS_REGION=$(aws configure get region)
docker build -t unicorns .
docker tag unicorns $AWS_ACCOUNT.dkr.ecr.$AWS_REGION.amazonaws.com/unicorns
aws ecr get-login-password | docker login --username AWS --password-stdin $AWS_ACCOUNT.dkr.ecr.$AWS_REGION.amazonaws.com
docker push  $AWS_ACCOUNT.dkr.ecr.$AWS_REGION.amazonaws.com/unicorns
