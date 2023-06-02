provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "TEST" {
ami = "ami-0715c1897453cabd1"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.new-sg.id]
}

resource "aws_eip" "myeip" {
  vpc = "true"
}

