#----------------------------- EC2 -----------------------------------------
resource "aws_instance" "ec2_admin" {
  ami           = "ami-058bd2d568351da34" # ubuntu image
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_main.id]
  key_name = "k8s-kp"

  tags = {
    Name = "ec2_admin"
  }
}

resource "aws_instance" "ec2_client1" {
  ami           = "ami-058bd2d568351da34" # ubuntu image
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_main.id]
  key_name = "k8s-kp"

  tags = {
    Name = "ec2_client1"
  }
}

resource "aws_instance" "ec2_client2" {
  ami           = "ami-058bd2d568351da34" # ubuntu image
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_main.id]
  key_name = "k8s-kp"

  tags = {
    Name = "ec2_client2"
  }
}