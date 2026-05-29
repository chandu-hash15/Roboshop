variable "Project" {
    default = "PCR"
}

variable "Environment" {
    default = "Dev"
}
variable "sg_name" {
  default = [

    "mysql",
    "redis",
    "mongodb",
    "rabbitmq",

    # backend

    "catalogue",
    "cart",
    "payment",
    "shipping",
    "user",

    # BASTION

    "bastion",

    # FRONTEND

    "frontend",

    # FRONTEND_ALB

    "frontend_alb",

    # BACKEND_ALB

    "backend_alb"
  ]
}

variable "sg_description" {
    default = "This securoty group is for all components "
}

