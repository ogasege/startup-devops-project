# Create the internet gateway

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.startup_vpc.id

  tags = {
    Name = "Internet Gateway"
  }
}
