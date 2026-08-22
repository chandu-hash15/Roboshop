data "aws_ssm_parameter" "frontend_alb_sg_id" {
 name = "/${var.Project}/${var.Environment}/frontend_alb/sg_id"
}

data "aws_ssm_parameter" "vpc_id" {
 name = "/${var.Project}/${var.Environment}/vpc_id"
}

data "aws_ssm_parameter" "public_subnet_0" {
  name = "/${var.Project}/${var.Environment}/public_subnet_0"
}

data "aws_ssm_parameter" "public_subnet_1" {
  name = "/${var.Project}/${var.Environment}/public_subnet_1"
}

data "aws_ssm_parameter" "frontend_roboshop_cert" {
  name = "/${var.Project}/${var.Environment}/frontend_roboshop_cert_arn"
}





