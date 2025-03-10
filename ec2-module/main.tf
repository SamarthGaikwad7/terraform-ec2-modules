resource "aws_instance" "example" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = "subnet-084c5bc0d98112251"
    vpc_security_group_ids = ["sg-0db05b8b042cdce03"]
  tags = {
    Name="Terraform-Instance-01"
  }
}
resource "aws_instance" "example01" {
    ami = var.ami_ids
    instance_type = var.instance_types
    subnet_id = "subnet-084c5bc0d98112251"
    vpc_security_group_ids = ["sg-0db05b8b042cdce03"]
  tags = {
    Name="Terraform-Instance-02"
  }
}
resource "aws_eip" "elastic_ip" {
  instance = aws_instance.example.id
  domain   = "vpc"

  tags = {
    Name = "Terraform-EIP-crazy-xyz"
  }
}
