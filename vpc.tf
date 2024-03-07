//------------------vpc -----------------------

resource "aws_vpc" "vpc_main" {
  cidr_block       = "10.0.0.0/16" #IP ranges available inside VPC
  instance_tenancy = "default"

  tags = {
    Name = "vpc_main"
  }
}

#------------------------------ provider -----------------------------------
provider "aws" {
  region = "us-east-1"
}
