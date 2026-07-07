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

#test