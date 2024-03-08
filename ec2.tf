#----------------------------- EC2 ----------------------------------------
resource "aws_instance" "ec2_admin" {
  ami           = "ami-058bd2d568351da34" # ubuntu image
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_main.id]
  key_name = "k8s-kp"
  user_data = file("ansible-vpn.sh")
  associate_public_ip_address	= "true"
  tags = {
    Name = "ec2_admin"
  }
}

resource "aws_instance" "INSTANCE-RPROXY" {
        key_name					= "k8s-kp"
        ami							= "ami-058bd2d568351da34"
        vpc_security_group_ids = [aws_security_group.sg_main.id]
        subnet_id					= aws_subnet.public_subnet.id
		instance_type				= "t2.micro"
		associate_public_ip_address	= "true"

        tags = {
                Name = "INSTANCE-RPROXY"
        }
}
#------------------------- EC2 client 1 ------------------------------------

resource "aws_instance" "ec2_client1" {
  ami           = "ami-058bd2d568351da34" # ubuntu image
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet_client1.id
  vpc_security_group_ids = [aws_security_group.sg_client1.id]
  key_name = "k8s-kp"

  tags = {
    Name = "ec2_client1"
  }
}

#------------------------- EC2 client 2 ------------------------------------

resource "aws_instance" "ec2_client2" {
  ami           = "ami-058bd2d568351da34" # ubuntu image
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet_client2.id
  vpc_security_group_ids = [aws_security_group.sg_client2.id]
  key_name = "k8s-kp"

  tags = {
    Name = "ec2_client2"
  }
}
