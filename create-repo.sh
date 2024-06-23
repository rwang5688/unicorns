#!/bin/sh
export AWS_ACCOUNT=$(aws sts get-caller-identity --query "Account" --output text)                                                                                                                     
export AWS_REGION=$(aws configure get region)
aws ecr create-repository --repository-name unicorns --region $AWS_REGION --output text
