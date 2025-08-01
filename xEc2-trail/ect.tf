resource "aws_instance" "this" {
ami = var.ami_id # This is our devops-practice AMI ID
instance_type          = var.instance_type
subnet_id = aws_subnet.my_subnet.id
vpc_security_group_ids = [aws_security_group.MySG.id]

tags  = var.ec2_tags

}


resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_cidr_blocks

    tags = {
        Name = var.vpc_name

    }
}


resource "aws_subnet" "my_subnet" {
    vpc_id  = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.availability_zone

tags = {
    Name = var.subnet_name
}

}


resource "aws_security_group" "MySG" {
  name        = "MySG82"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.sg_tags
}