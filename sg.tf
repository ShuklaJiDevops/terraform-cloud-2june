resource "aws_security_group" "ec2-sg" {
  name = "new-sg"
  ingress {
    description = "ingress port for vault"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ingress port for vault"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["14.140.116.145/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }

}
