locals {
    ami_id = data.aws_ami.joindevops.id
    common_name = "${var.Project}/${var.Environment}"
    
    private_subnet_ids = [
        data.aws_ssm_parameter.private_subnet-1_id.value,
        
        data.aws_ssm_parameter.private_subnet-2_id.value
    ]

    catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value

    vpc_id = data.aws_ssm_parameter.vpc_id.value

    backend_alb_listener_arn = data.aws_ssm_parameter. backend_alb_listener_arn.value


    tags = {

        Project = var.Project
        Environment = var.Environment
        Terraform = true
    }
}