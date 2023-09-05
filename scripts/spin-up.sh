#!/bin/bash

# Check if Terraform is installed
if ! command -v terraform &> /dev/null
then
    echo "Terraform could not be found. Please install it before running this command."
    exit
fi

# Prompt for EC2 name (this is not used in the current Terraform configuration you've shared, but can be used if needed in the future)
read -p "Enter EC2 name: " ec2_name

# Prompt for GitHub repo URL
read -p "Enter repo_url: " repo_url

# Prompt for AWS key name
read -p "Enter aws_key_name: " key_name

# Run terraform commands
terraform init
terraform apply -var "key_name=$key_name" -var "repo_url=$repo_url"

echo "Done."
