# Define the VPC


resource "aws_vpc" "startup_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "Startup VPC"
  }
}
