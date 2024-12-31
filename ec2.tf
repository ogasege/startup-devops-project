# This block creates the web servers using the "aws_instance" resource. 
# We're using the AMI ID that we fetched earlier, setting the instance type using the "instance_type" variable, and deploying the instances in the "eu-west-2a" availability zone. 
# We're also using a "count" parameter to create 4 instances, and we're naming each instance using the "Name" tag with a unique index number.

resource "aws_instance" "web_server_az1" {
  count                       = 2
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.default.id]
  subnet_id                   = aws_subnet.web_server_subnet_1.id
  associate_public_ip_address = true
  user_data                   = file("${path.module}/user_data.tpl")

  tags = {
    Name = "web-server-${count.index + 1}"
  }
}

resource "aws_instance" "web_server_az2" {
  count                       = 2
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.default.id]
  subnet_id                   = aws_subnet.web_server_subnet_2.id
  associate_public_ip_address = true
  user_data                   = file("${path.module}/user_data.tpl")

  tags = {
    Name = "web-server-${count.index + 3}"
  }
}


