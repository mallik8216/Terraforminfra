variable "instance_type" {
  type = string
  default = "t3.micro"
  description = "description"
}

variable "project" {
  default = "ex"
}

variable "component" {
  default = "backend"

}

variable "environment" {
  default = "dev"
}

