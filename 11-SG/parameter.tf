resource "aws_ssm_parameter" "roboshop_sg" {
  count = length(var.sg_name)
  name  = "/${var.Project}/${var.Environment}/${var.sg_name[count.index]}/sg_id"
  type  = "String"
  value = module.my_roboshop_sg[count.index].roboshop_sg
}