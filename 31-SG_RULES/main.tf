resource "aws_security_group_rule" "backend_alb_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.backend_alb_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
}


resource "aws_security_group_rule" "bastion_accepting_laptop" {
  type              = "ingress"
  security_group_id = local.bastion_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}


resource "aws_security_group_rule" "mongodb_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.mongodb_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}


resource "aws_security_group_rule" "redis_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.redis_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}


resource "aws_security_group_rule" "rabbitmq_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.rabbitmq_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

resource "aws_security_group_rule" "mysql_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.mysql_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}


resource "aws_security_group_rule" "catalogue_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.catalogue_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

resource "aws_security_group_rule" "cart_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.cart_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

resource "aws_security_group_rule" "user_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.user_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

resource "aws_security_group_rule" "shipping_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.shipping_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}


resource "aws_security_group_rule" "paymment_accepting_bastion" {
  type              = "ingress"
  security_group_id = local.payment_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}







resource "aws_security_group_rule" "mongodb_accepting_catalogue" {
  type                     = "ingress"
  from_port                = 27017
  to_port                  = 27017
  protocol                 = "tcp"

  security_group_id        = local.mongodb_sg_id
  source_security_group_id = local.catalogue_sg_id
}


resource "aws_security_group_rule" "catalogue_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.catalogue_sg_id
  source_security_group_id = local.backend_alb_sg_id
}


resource "aws_security_group_rule" "frontend_alb_accepting_public" {
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"

  security_group_id        = local.frontend_alb_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "mysql_accepting_shipping" {
  type              = "ingress"
  security_group_id = local.mysql_sg_id
  source_security_group_id = local.shipping_sg_id
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
}




resource "aws_security_group_rule" "shipping_accepting_mysql" {
  type              = "ingress"
  security_group_id = local.shipping_sg_id
  source_security_group_id = local.mysql_sg_id
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
}


resource "aws_security_group_rule" "rabbitmq_accepting_payment" {
  type              = "ingress"
  security_group_id = local.rabbitmq_sg_id
  source_security_group_id = local.payment_sg_id
  from_port         = 5672
  to_port           = 5672
  protocol          = "tcp"
}


resource "aws_security_group_rule" "redis_accepting_cart" {
  type              = "ingress"
  security_group_id = local.redis_sg_id
  source_security_group_id = local.cart_sg_id
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
}

resource "aws_security_group_rule" "frontend_accepting_frontend_alb" {
  type              = "ingress"
  security_group_id = local.frontend_sg_id
  source_security_group_id = local.frontend_alb_sg_id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"   
}


resource "aws_security_group_rule" "frontend_accepting_frontend_alb" {
  type              = "ingress"
  security_group_id = local.frontend_sg_id
  source_security_group_id = local.frontend_alb_sg_id
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"   
}

resource "aws_security_group_rule" "cart_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.cart_sg_id
  source_security_group_id = local.backend_alb_sg_id
}

resource "aws_security_group_rule" "user_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.user_sg_id
  source_security_group_id = local.backend_alb_sg_id
}

resource "aws_security_group_rule" "shipping_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.shipping_sg_id
  source_security_group_id = local.backend_alb_sg_id
}

resource "aws_security_group_rule" "payment_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.payment_sg_id
  source_security_group_id = local.backend_alb_sg_id
}






