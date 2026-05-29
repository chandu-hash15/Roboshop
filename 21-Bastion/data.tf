data "aws_ami" "joindevops" {

  owners = ["973714476881"]

  most_recent = true

  filter {

    name = "name"

    values = ["Redhat-9-DevOps-Practice*"]

  }

  filter {

    name = "root-device-type"

    values = ["ebs"]

  }

  filter {

    name = "virtualization-type"

    values = ["hvm"]

  }

}



data "aws_ssm_parameter" "sg_id" {
  name = "/${var.Project}/${var.Environment}/bastion/sg_id"
}

data "aws_ssm_parameter" "public_subnet" {
 name = "/${var.Project}/${var.Environment}/public_subnet_0"
}
