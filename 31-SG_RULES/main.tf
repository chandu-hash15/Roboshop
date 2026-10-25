##################  MONGODB ACCEPTING BASTION ##################
resource "aws_security_group_rule" "mongodb_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.mongodb_sg_id
  source_security_group_id = local.bastion_sg_id
}

####################### MONGODB ACCEPTING CATALOGUE ################
  resource "aws_security_group_rule" "mongodb_accepting_catalogue" {
  type                     = "ingress"
  from_port                = 27017
  to_port                  = 27017
  protocol                 = "tcp"

  security_group_id        = local.mongodb_sg_id
  source_security_group_id = local.catalogue_sg_id
}

#################### MONGODB ACCEPTING USER ######################
resource "aws_security_group_rule" "mongodb_accepting_user" {
  type                     = "ingress"
  from_port                = 27017
  to_port                  = 27017
  protocol                 = "tcp"

  security_group_id        = local.mongodb_sg_id
  source_security_group_id = local.user_sg_id
}

#################### Redis Accepting Bastion #######################
resource "aws_security_group_rule" "redis_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.redis_sg_id
  source_security_group_id = local.bastion_sg_id
}

####################### Redis Accepting User ##############################

resource "aws_security_group_rule" "redis_accepting_user" {
  type                     = "ingress"
  from_port                = 6379
  to_port                  = 6379
  protocol                 = "tcp"

  security_group_id        = local.redis_sg_id
  source_security_group_id = local.user_sg_id
}


####################### Redis Accepting Cart ##############################

resource "aws_security_group_rule" "redis_accepting_cart" {
  type                     = "ingress"
  from_port                = 6379
  to_port                  = 6379
  protocol                 = "tcp"

  security_group_id        = local.redis_sg_id
  source_security_group_id = local.cart_sg_id
}

######################### Mysql Accepting Bastion ##########################
resource "aws_security_group_rule" "mysql_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.mysql_sg_id
  source_security_group_id = local.bastion_sg_id
}


######################### Mysql Accepting Shipping ##########################
resource "aws_security_group_rule" "mysql_accepting_shipping" {
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"

  security_group_id        = local.mysql_sg_id
  source_security_group_id = local.shipping_sg_id
}


######################### Raabbitmq Accepting Bastion ##########################
resource "aws_security_group_rule" "rabbitmq_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.rabbitmq_sg_id
  source_security_group_id = local.bastion_sg_id
}


######################### Raabbitmq Accepting Payment ##########################

resource "aws_security_group_rule" "rabbitmq_accepting_payment" {
  type                     = "ingress"
  from_port                = 5672
  to_port                  = 5672
  protocol                 = "tcp"

  security_group_id        = local.rabbitmq_sg_id
  source_security_group_id = local.payment_sg_id
}



################## Catalogue Accepting Bastion ####################
resource "aws_security_group_rule" "catalogue_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.catalogue_sg_id
  source_security_group_id = local.bastion_sg_id
}

################## Catalogue Accepting Bakend_Alb ####################
resource "aws_security_group_rule" "catalogue_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.catalogue_sg_id
  source_security_group_id = local.backend_alb_sg_id
}

################## User Accepting Bastion ####################
resource "aws_security_group_rule" "user_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.user_sg_id
  source_security_group_id = local.bastion_sg_id
}

################## User Accepting Bakend_Alb ####################
resource "aws_security_group_rule" "user_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.user_sg_id
  source_security_group_id = local.backend_alb_sg_id
}


################## Cart Accepting Bastion ####################
resource "aws_security_group_rule" "cart_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.cart_sg_id
  source_security_group_id = local.bastion_sg_id
}


################## Cart Accepting Backend_Alb ####################
resource "aws_security_group_rule" "cart_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.cart_sg_id
  source_security_group_id = local.backend_alb_sg_id
}


################## Backend_Alb Accepting Cart ####################

resource "aws_security_group_rule" "bakend_alb_accepting_cart" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"

  security_group_id        = local.backend_alb_sg_id
  source_security_group_id = local.cart_sg_id
}


################## Shipping Accepting Bastion ####################
resource "aws_security_group_rule" "shipping_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.shipping_sg_id
  source_security_group_id = local.bastion_sg_id
}


################## Shipping Accepting Backend_Alb ####################
resource "aws_security_group_rule" "shipping_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.shipping_sg_id
  source_security_group_id = local.backend_alb_sg_id
}

################## Backend_Alb Accepting Shipping ####################

resource "aws_security_group_rule" "bakend_alb_accepting_shipping" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"

  security_group_id        = local.backend_alb_sg_id
  source_security_group_id = local.shipping_sg_id
}

################## Payment Accepting Bastion ####################
resource "aws_security_group_rule" "payment_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.payment_sg_id
  source_security_group_id = local.bastion_sg_id
}


################## Payment Accepting Backend_Alb ####################
resource "aws_security_group_rule" "payment_accepting_backend_alb" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

  security_group_id        = local.payment_sg_id
  source_security_group_id = local.backend_alb_sg_id
}

################## Backend_Alb Accepting Payment ####################

resource "aws_security_group_rule" "bakend_alb_accepting_payment" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"

  security_group_id        = local.backend_alb_sg_id
  source_security_group_id = local.payment_sg_id
}

################## Backend_Alb Accepting Bastion ####################
resource "aws_security_group_rule" "bakend_alb_accepting_bastion" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"

  security_group_id        = local.backend_alb_sg_id
  source_security_group_id = local.bastion_sg_id
}


################## Backend_Alb Accepting Frontend ####################
resource "aws_security_group_rule" "bakend_alb_accepting_frontend" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"

  security_group_id        = local.backend_alb_sg_id
  source_security_group_id = local.frontend_sg_id
}


################## Frontned Accepting Bastion ####################
resource "aws_security_group_rule" "frontend_accepting_bastion" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

  security_group_id        = local.frontend_alb_sg_id
  source_security_group_id = local.bastion_sg_id
}

################## Frontned Accepting Frontend_Alb ####################
resource "aws_security_group_rule" "frontend_accepting_frontend_alb" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"

  security_group_id        = local.frontend_sg_id
  source_security_group_id = local.frontend_alb_sg_id
}

################## Frontned_Alb Accepting Public ####################

resource "aws_security_group_rule" "frontend_alb_accepting_public" {
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"

  security_group_id        = local.frontend_alb_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
}


################## Bastion Accepting Public ####################
resource "aws_security_group_rule" "bastion_accepting_laptop" {
  type              = "ingress"
  security_group_id = local.bastion_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}









####################### Improper Way #################################

# resource "aws_security_group_rule" "backend_alb_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.backend_alb_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "bastion_accepting_laptop" {
#   type              = "ingress"
#   security_group_id = local.bastion_sg_id
#   cidr_blocks       = ["0.0.0.0/0"]
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "mongodb_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.mongodb_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "redis_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.redis_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "rabbitmq_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.rabbitmq_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }



# resource "aws_security_group_rule" "mysql_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.mysql_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "catalogue_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.catalogue_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }

# resource "aws_security_group_rule" "cart_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.cart_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }

# resource "aws_security_group_rule" "user_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.user_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }

# resource "aws_security_group_rule" "shipping_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.shipping_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "paymment_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.payment_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }

# resource "aws_security_group_rule" "frontend_accepting_bastion" {
#   type              = "ingress"
#   security_group_id = local.frontend_alb_sg_id
#   source_security_group_id = local.bastion_sg_id
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "mongodb_accepting_catalogue" {
#   type                     = "ingress"
#   from_port                = 27017
#   to_port                  = 27017
#   protocol                 = "tcp"

#   security_group_id        = local.mongodb_sg_id
#   source_security_group_id = local.catalogue_sg_id
# }


# resource "aws_security_group_rule" "catalogue_accepting_backend_alb" {
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"

#   security_group_id        = local.catalogue_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }


# resource "aws_security_group_rule" "frontend_alb_accepting_public" {
#   type                     = "ingress"
#   from_port                = 443
#   to_port                  = 443
#   protocol                 = "tcp"

#   security_group_id        = local.frontend_alb_sg_id
#   cidr_blocks       = ["0.0.0.0/0"]
# }

# resource "aws_security_group_rule" "mysql_accepting_shipping" {
#   type              = "ingress"
#   security_group_id = local.mysql_sg_id
#   source_security_group_id = local.shipping_sg_id
#   from_port         = 3306
#   to_port           = 3306
#   protocol          = "tcp"
# }




# resource "aws_security_group_rule" "shipping_accepting_mysql" {
#   type              = "ingress"
#   security_group_id = local.shipping_sg_id
#   source_security_group_id = local.mysql_sg_id
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "rabbitmq_accepting_payment" {
#   type              = "ingress"
#   security_group_id = local.rabbitmq_sg_id
#   source_security_group_id = local.payment_sg_id
#   from_port         = 5672
#   to_port           = 5672
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "redis_accepting_cart" {
#   type              = "ingress"
#   security_group_id = local.redis_sg_id
#   source_security_group_id = local.cart_sg_id
#   from_port         = 6379
#   to_port           = 6379
#   protocol          = "tcp"
# }


# resource "aws_security_group_rule" "redis_accepting_user" {
#   type              = "ingress"
#   security_group_id = local.redis_sg_id
#   source_security_group_id = local.user_sg_id
#   from_port         = 6379
#   to_port           = 6379
#   protocol          = "tcp"
# }

# resource "aws_security_group_rule" "frontend_accepting_frontend_alb" {
#   type              = "ingress"
#   security_group_id = local.frontend_sg_id
#   source_security_group_id = local.frontend_alb_sg_id
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"   
# }



# resource "aws_security_group_rule" "cart_accepting_backend_alb" {
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"

#   security_group_id        = local.cart_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }

# resource "aws_security_group_rule" "user_accepting_backend_alb" {
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"

#   security_group_id        = local.user_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }

# resource "aws_security_group_rule" "shipping_accepting_backend_alb" {
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"

#   security_group_id        = local.shipping_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }

# resource "aws_security_group_rule" "payment_accepting_backend_alb" {
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"

#   security_group_id        = local.payment_sg_id
#   source_security_group_id = local.backend_alb_sg_id
# }






