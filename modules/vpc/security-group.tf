resource "aws_security_group" "my-sg" {
  name        = var.security-group-name
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.my-terrafrom-vpc.id

  dynamic "ingress" {
    for_each = var.port_numbers_ingress
    iterator = port
    content {
      description = "TLS FROM VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  dynamic "egress" {
    for_each = var.port_numbers_egress
    iterator = port
    content {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }

  tags = {
    Name = var.security-group-name
  }
}




