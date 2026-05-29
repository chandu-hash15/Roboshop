module "vpc2" {

    source = "git::https://github.com/chandu-hash15/terraform-vpc2-module.git?ref=main"
    vpc_cidr = var.vpc_cidr
    Project = var.Project
    Environment = var.Environment
    public_cidr = var.public_cidr
    private_cidr = var.private_cidr
    database_cidr = var.database_cidr
}
