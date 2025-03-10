output "instance_id" {
    value = module.ec2.instance_id
  
}

output "public_ip" {
    value = module.ec2.public_ip
  
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "website_url" {
  value = aws_s3_bucket_website_configuration.site.website_endpoint
  description = "URL of the hosted static website"
}

