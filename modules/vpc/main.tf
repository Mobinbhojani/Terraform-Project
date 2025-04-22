resource "aws_vpc" "my-terrafrom-vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc-name
  }
}

resource "aws_subnet" "my-sub1" {
  vpc_id                  = aws_vpc.my-terrafrom-vpc.id
  cidr_block              = var.sub1-cidr_block
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.vpc-sub1-name
  }
}

resource "aws_subnet" "my-sub2" {
  vpc_id                  = aws_vpc.my-terrafrom-vpc.id
  cidr_block              = var.sub2-cidr_block
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = var.vpc-sub1-name
  }
}

resource "aws_internet_gateway" "my-internet-gayeway" {
  vpc_id = aws_vpc.my-terrafrom-vpc.id

  tags = {
    Name = var.internet-gateway-name
  }
}

resource "aws_route_table" "my-rt" {
  vpc_id = aws_vpc.my-terrafrom-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-internet-gayeway.id
  }
}

resource "aws_route_table_association" "my-rta1" {
  subnet_id      = aws_subnet.my-sub1.id
  route_table_id = aws_route_table.my-rt.id
}

resource "aws_route_table_association" "my-rta2" {
  subnet_id      = aws_subnet.my-sub2.id
  route_table_id = aws_route_table.my-rt.id
}