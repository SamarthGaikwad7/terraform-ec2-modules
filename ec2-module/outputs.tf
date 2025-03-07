output "instance_id" {
  description = "The ID of the EC2 instance"
  value = aws_instance.example
}

output "public_ip" {
    description = "Public IP of the EC2 Instance"
    value = aws_instance.example.public_ip
  
}
