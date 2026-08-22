locals {
    common_name = "${var.Project}/${var.Environment}"

    tags = {

        Project = var.Project
        Environment = var.Environment
        Terraform = true
    }
}