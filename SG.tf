resource "aws_security_group" "security_group" {
  vpc_id = aws_vpc.vpc.id
  tags   = merge(var.tags, {})
  name   = "Panthera_Cluster"

  egress {
    to_port   = 65535
    protocol  = "tcp"
    from_port = 0
    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  ingress {
    to_port     = 80
    protocol    = "tcp"
    from_port   = 80
    description = "HTTP Only"
    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }
}

