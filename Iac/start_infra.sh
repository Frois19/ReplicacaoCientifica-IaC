#!/bin/bash

aws_access_key="$1"
if [[ -z  "$aws_access_key"  ]]; then
    echo "##vso[task.logissue type=error]Parameter value aws_access_key was not received"
    exit
fi

aws_secret_key="$2"
if [[ -z  "$aws_secret_key"  ]]; then
    echo "##vso[task.logissue type=error]Parameter value aws_secret_key was not received"
    exit
fi

aws_region="$3"
if [[ -z  "$aws_region"  ]]; then
    aws_region="us-east-1"
fi

aws_profile="$4"
if [[ -z  "$aws_profile"  ]]; then
    aws_profile="terraform"
fi

echo "Acessando pasta do Terraform"
cd terraform/

export TF_VAR_aws_access_key="$aws_access_key"
export TF_VAR_aws_secret_key="$aws_secret_key"
export TF_VAR_aws_region="$aws_region"
export TF_VAR_aws_profile="$aws_profile"

echo "Iniciando terraform"
terraform init
echo "Planejando e aplicando alterações"
terraform apply -auto-approve