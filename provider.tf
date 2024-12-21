# This block sets the AWS provider configuration for Terraform. 
# In this case, we're using the "aws" provider and setting the region to "eu-west-2".

provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["${path.module}/credentials"]
}



