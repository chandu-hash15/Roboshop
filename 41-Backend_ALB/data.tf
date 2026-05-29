data "aws_ssm_parameter" "backend_alb_sg_id" {
 name = "/${var.Project}/${var.Environment}/backend_alb/sg_id"
}

data "aws_ssm_parameter" "vpc_id" {
 name = "/${var.Project}/${var.Environment}/vpc_id"
}

data "aws_ssm_parameter" "private_subnet_0" {
  name = "/${var.Project}/${var.Environment}/private_subnet_0"
}

data "aws_ssm_parameter" "private_subnet_1" {
  name = "/${var.Project}/${var.Environment}/private_subnet_1"
}
