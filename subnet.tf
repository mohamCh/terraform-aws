#------------------------------- subnet -------------------------------

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_main.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "public_subnet_client1" {
  vpc_id                  = aws_vpc.vpc_client1.id
  cidr_block              = "10.1.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "public_subnet_clinet1"
  }
}

resource "aws_subnet" "public_subnet_client2" {
  vpc_id                  = aws_vpc.vpc_client2.id
  cidr_block              = "10.2.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "public_subnet_client2"
  }
}
