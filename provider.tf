# This block sets the AWS provider configuration for Terraform. 
# In this case, we're using the "aws" provider and setting the region to "eu-west-2".

provider "aws" {
  region = "eu-west-2"
  shared_credentials_files = ["/home/ogasege/.aws/credentials"]
}



