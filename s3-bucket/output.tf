output "bucket_name" {
  value = aws_s3_bucket.example.id
}
output "website_url" {
  value = aws_s3_bucket_website_configuration.site.website_endpoint
}
