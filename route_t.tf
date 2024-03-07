#----------------------------------------- Route table -----------------------------------------

resource "aws_route_table" "rt_main" {
  vpc_id = aws_vpc.vpc_main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_main.id
  }

  tags = {
    Name = "rt_main"
  }
}

resource "aws_route_table" "rt_client1" {
  vpc_id = aws_vpc.vpc_client1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_client1.id
  }
  tags = {
    Name = "rt_client1"
  }
}

resource "aws_route_table" "rt_client2" {
  vpc_id = aws_vpc.vpc_client2.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_client2.id
  }
  tags = {
    Name = "rt_client2"
  }
}
