resource "aws_ssm_parameter" "frontend_roboshop_cert" {
  name  = "/${var.Project}/${var.Environment}/frontend_roboshop_cert_arn"
  type  = "String"
  value = aws_acm_certificate.frontend_roboshop_cert.arn
}