variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}

variable "instance_type" {
    #default = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        Project = "expense"
        Component = "backend"
        Environment = "dev"
        Name = "expense-backend-dev"
    }
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    type = number
    default = 22
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {
        Name = "mypractice-SG"
    }
}

variable "vpc_cidr_blocks"{
    description ="CIDR block for the VPC"
    type = string
    default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the Subnet"
  type        = string
  default     = "10.0.1.0/24"
}

 variable "availability_zone" {
  description = "Availability Zone for the Subnet"
  type        = string
  default     = "us-east-1a"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "myvpc"
}

variable "subnet_name" {
  description = "Name tag for the Subnet"
  type        = string
  default     = "mysubnetVeb"
}



/* 
1. command line --> -var "<var-name>=<var-value>"
2. tfvars
3. env var
4. default values
5. user prompt */