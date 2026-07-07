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


data "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/${var.Project}/${var.Environment}/mongodb/sg_id"
}

data "aws_ssm_parameter" "private_subnet-1_id" {
    name = "/${var.Project}/${var.Environment}/private_subnet_0"
}

data "aws_ssm_parameter" "private_subnet-2_id" {
    name = "/${var.Project}/${var.Environment}/private_subnet_1"
}

data "aws_ssm_parameter" "database_subnet-1_id" {
    name = "/${var.Project}/${var.Environment}/database_subnet_0"
}


data "aws_ssm_parameter" "redis_sg_id" {
  name = "/${var.Project}/${var.Environment}/redis/sg_id"
}


data "aws_ssm_parameter" "rabbitmq_sg_id" {
  name = "/${var.Project}/${var.Environment}/rabbitmq/sg_id"
}

data "aws_ssm_parameter" "mysql_sg_id" {
  name = "/${var.Project}/${var.Environment}/mysql/sg_id"
}

