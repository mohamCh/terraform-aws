#-----------------------------------------Route table association -------------------------------

resource "aws_route_table_association" "rta_main" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.rt_main.id
}

resource "aws_route_table_association" "rta_client1" {
  subnet_id      = aws_subnet.public_subnet_client1.id
  route_table_id = aws_route_table.rt_client1.id
}

resource "aws_route_table_association" "rta_client2" {
  subnet_id      = aws_subnet.public_subnet_client2.id
  route_table_id = aws_route_table.rt_client2.id
}
