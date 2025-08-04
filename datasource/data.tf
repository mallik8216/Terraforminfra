data "aws_vpc" "default" {
    default = true
}


output "default_vpc_id" {
    value = data.aws_vpc.default.id
}


data "aws_ami" "joindevops" {
   most_recent = true
   owners = ["973714476881"]

filter {
  name = "name"
  values = [ "RHEL-9-DevOps-Practice" ]
}

filter {
  name =  "root-device-type"
  values = [ "ebs" ]
}

}

output "aws_ami" {
  value = data.aws_ami.joindevops.id
}
