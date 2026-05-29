resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.Project}/${var.Environment}/vpc_id"
  type  = "String"
  value = module.vpc2.vpc_id
}



resource "aws_ssm_parameter" "public_subnet" {
  count = length(module.vpc2.public_subnet)
  name  = "/${var.Project}/${var.Environment}/public_subnet_${count.index}"
  type  = "String"
  value = module.vpc2.public_subnet[count.index]
}


resource "aws_ssm_parameter" "private_subnet" {
  count = length(module.vpc2.private_subnet)
  name  = "/${var.Project}/${var.Environment}/private_subnet_${count.index}"
  type  = "String"
  value = module.vpc2.private_subnet[count.index]
}

resource "aws_ssm_parameter" "database_subnet" {
  count = length(module.vpc2.private_subnet)
  name  = "/${var.Project}/${var.Environment}/database_subnet_${count.index}"
  type  = "String"
  value = module.vpc2.database_subnet[count.index]
}