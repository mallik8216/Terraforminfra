locals {
  ami_id = data.aws_ami.joindevops.id
  instance_type = "t3.micro"
  name = "${var.project}-${var.environment}-${var.component}"

}

#locals are used to run the expression or functions and save the results to variables.