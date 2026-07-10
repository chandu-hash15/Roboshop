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


data "aws_ssm_parameter" "catalogue_sg_id" {
  name = "/${var.Project}/${var.Environment}/catalogue/sg_id"
}

data "aws_ssm_parameter" "private_subnet-1_id" {
    name = "/${var.Project}/${var.Environment}/private_subnet_0"
}

data "aws_ssm_parameter" "private_subnet-2_id" {
    name = "/${var.Project}/${var.Environment}/private_subnet_1"
}


