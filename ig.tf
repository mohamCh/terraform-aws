#----------------------------------------- InternetGateway -------------------------------------
resource "aws_internet_gateway" "gw_main" {
  vpc_id = aws_vpc.vpc_main.id

  tags = {
    Name = "gw_main"
  }
}

resource "aws_internet_gateway" "gw_client1" {
  vpc_id = aws_vpc.vpc_client1.id

  tags = {
    Name = "gw_client1"
  }
}

resource "aws_internet_gateway" "gw_client2" {
  vpc_id = aws_vpc.vpc_client2.id

  tags = {
    Name = "gw_client2"
  }
}
