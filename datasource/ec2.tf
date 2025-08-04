resource "aws_instance" "this" {
  count = 1
  ami                    =  local.ami_id # This is local.tf file to readablity 
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = local.instance_type
  tags = {
    Name    = local.name
    Purpose = "terraform-practice"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_1"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}