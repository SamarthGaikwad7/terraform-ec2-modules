resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_website_configuration" "site" {
  
  bucket = aws_s3_bucket.example.id

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
}

resource "aws_s3_object" "index_html" {
  bucket = aws_s3_bucket.example.id
  key    = "index.html"
  source = "${path.module}/index.html"  # Ensure the file path is correct
  content_type = "text/html"
}

resource "aws_s3_bucket_policy" "public_access" {
  bucket = aws_s3_bucket.example.id

  policy =  jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow"
        Principal = "*"
        Action   = "s3:GetObject"
        Resource = "arn:aws:s3:::${aws_s3_bucket.example.bucket}/*"
      }
    ]
  })
}
