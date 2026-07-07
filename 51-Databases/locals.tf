locals {
    ami_id = data.aws_ami.joindevops.id
    common_name = "${var.Project}/${var.Environment}"
    
    private_subnet_ids = [
        data.aws_ssm_parameter.private_subnet-1_id,
        
        data.aws_ssm_parameter.private_subnet-2_id
    ]

    database_subnet_id = data.aws_ssm_parameter.database_subnet-1_id.value

    mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id.value
    redis_sg_id = data.aws_ssm_parameter.redis_sg_id.value
    rabbitmq_sg_id = data.aws_ssm_parameter.rabbitmq_sg_id.value
    mysql_sg_id = data.aws_ssm_parameter.mysql_sg_id.value

    tags = {

        Project = var.Project
        Environment = var.Environment
        Terraform = true
    }
}