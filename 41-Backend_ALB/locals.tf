locals {
    common_name = "${var.Project}-${var.Environment}"
    tags = {

        Project = var.Project
        Environment = var.Environment
        Terraform = true
    }

    vpc_id = data.aws_ssm_parameter.vpc_id.value
    backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
    private_subnets = [
    data.aws_ssm_parameter.private_subnet_0.value,
    data.aws_ssm_parameter.private_subnet_1.value
  ]
} 