module "ec2" {
    source = "./ec2-module"
    ami_id = var.ami_id
    ami_ids=var.ami_ids
    instance_type = var.instance_type
    instance_types = var.instance_types
  
}