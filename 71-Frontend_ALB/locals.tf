locals {
    common_name = "${var.Project}-${var.Environment}"
    tags = {

        Project = var.Project
        Environment = var.Environment
        Terraform = true
    }

    vpc_id = data.aws_ssm_parameter.vpc_id.value
    frontend_alb_sg_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
    frontend_roboshop_cert = data.aws.frontend_roboshop_cert_arn.value
    public_subnets = [
    data.aws_ssm_parameter.public_subnet_0.value,
    data.aws_ssm_parameter.public_subnet_1.value
  ]
} 