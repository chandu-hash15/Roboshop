data "aws_ssm_parameter" "backend_alb_sg_id" {
  name = "/${var.Project}/${var.Environment}/backend_alb/sg_id"
}


data "aws_ssm_parameter" "bastion_sg_id" {
  name = "/${var.Project}/${var.Environment}/bastion/sg_id"
}


data "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/${var.Project}/${var.Environment}/mongodb/sg_id"
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


data "aws_ssm_parameter" "catalogue_sg_id" {
  name = "/${var.Project}/${var.Environment}/catalogue/sg_id"
}

data "aws_ssm_parameter" "cart_sg_id" {
  name = "/${var.Project}/${var.Environment}/cart/sg_id"
}

data "aws_ssm_parameter" "user_sg_id" {
  name = "/${var.Project}/${var.Environment}/user/sg_id"
}

data "aws_ssm_parameter" "shipping_sg_id" {
  name = "/${var.Project}/${var.Environment}/shipping/sg_id"
}


data "aws_ssm_parameter" "payment_sg_id" {
  name = "/${var.Project}/${var.Environment}/payment/sg_id"
}

data "aws_ssm_parameter" "frontend_alb_sg_id" {
  name = "/${var.Project}/${var.Environment}/frontend_alb/sg_id"
}

data "aws_ssm_parameter" "frontend_sg_id" {
  name = "/${var.Project}/${var.Environment}/frontend/sg_id"
}



