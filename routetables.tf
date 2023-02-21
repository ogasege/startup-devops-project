# Create the route tables

resource "aws_route_table" "web_server_route_table" {
  vpc_id = aws_vpc.startup_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "Web Server Route Table"
  }
}




resource "aws_default_route_table" "mtc_private_rt" {
  default_route_table_id = aws_vpc.startup_vpc.default_route_table_id

  tags = {
    Name = "mtc_private"
  }
}

resource "aws_route_table_association" "mtc_public_assoc1" {
  count = 3
  subnet_id      = aws_subnet.web_server_subnet_1.id
  route_table_id = aws_route_table.web_server_route_table.id
}

resource "aws_route_table_association" "mtc_public_assoc2" {
  count = 3
  subnet_id      = aws_subnet.web_server_subnet_2.id
  route_table_id = aws_route_table.web_server_route_table.id
}


