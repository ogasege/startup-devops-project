# This block defines a Terraform variable named "instance_type", which is used to specify the instance type of the EC2 instances.
# The given instance type is "t2.micro"
variable "instance_type" {
  default = "t2.micro"
}

variable "db_instance_names" {
  type    = map(string)
  default = {
    "db_instance_1" = "db_name_1"
    "db_instance_2" = "db_name_2"
  }
}

data "aws_ami" "ubuntu" {

    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"]
}
