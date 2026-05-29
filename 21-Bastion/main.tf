resource "aws_instance" "Bastion" {
  ami           = local.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [local.bastion_sg_id]
  subnet_id = local.public_subnet_id
  tags = merge(

    local.tags, {

        Name = local.common_name
    }
    
  )
    
}