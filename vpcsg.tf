resource “aws_vpc” “main” {
cidr_block = “10.0.0.0/16”
}

resource "aws_security_group" "SecGroup" {
  name        = "TLS"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id


  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }


  tags = {
    Name = "allow_tls"
  }
}
