resource "aws_vpc" "vpc1"{
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "SNETTA-ec2-terraform-poc-vpc"
  }
}

resource "aws_subnet" "sub1"{
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "SNETTA-ec2-terraform-poc-sub"
  }
}

resource "aws_instance" "simple-servers" {
  ami                         = var.ami
  subnet_id                   = aws_subnet.sub1.id
  instance_type               = "t2.medium"
  associate_public_ip_address = true
  security_groups             = var.sec_groups
  key_name                    = "Terra"
  tags = {
    Name = "SNETTA-ec2-terraform-poc-kubectl-master-controller"
  }
}
