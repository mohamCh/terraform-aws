#------------------------------- subnet -------------------------------

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_main.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "public_subnet"
  }
}