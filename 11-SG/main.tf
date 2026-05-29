module "my_roboshop_sg" {
  count = length(var.sg_name)
  source = "git::https://github.com/chandu-hash15/terraform-roboshop-sg.git"

  sg_name        = var.sg_name[count.index]
  sg_description = var.sg_description
  vpc_id      = data.aws_ssm_parameter.vpc_id.value
  Project = var.Project
  Environment = var.Environment

}


  