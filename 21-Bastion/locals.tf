locals {
    common_name = "${var.Project}.${var.Environment}"
    tags = {

        Project = var.Project
        Environment = var.Environment
        Terraform = true
    }

    bastion_sg_id = data.aws_ssm_parameter.sg_id.value
    ami_id = data.aws_ami.joindevops.id
    public_subnet_id = data.aws_ssm_parameter.public_subnet.value
}