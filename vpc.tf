#------------------ provider -------------------
provider "aws" {
  region = "us-east-1"
}

//------------------ vpc -----------------------

resource "aws_vpc" "vpc_main" {
  cidr_block       = "10.0.0.0/16" #IP ranges available inside VPC
  instance_tenancy = "default"

  tags = {
    Name = "vpc_main"
  }
}
resource "aws_vpc" "vpc_client1" {
  cidr_block       = "10.1.0.0/16" #IP ranges available inside VPC
  instance_tenancy = "default"

  tags = {
    Name = "vpc_client1"
  }
}
resource "aws_vpc" "vpc_client2" {
  cidr_block       = "10.2.0.0/16" #IP ranges available inside VPC
  instance_tenancy = "default"

  tags = {
    Name = "vpc_client2"
  }
}
