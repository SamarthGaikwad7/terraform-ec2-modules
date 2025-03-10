variable "region" {
    description = "aws region"
    default = "us-east-1"
    type=string
  
}

variable "instance_type" {
    description = "EC2 instance type"
    default = "t2.micro"
    type=string
  
}

variable "ami_id" {
    description = "Amazon Machine Image ID"
    type = string
    default = "ami-085ad6ae776d8f09c"

  
}

variable "instance_types" {
    description = "EC2 instance type"
    default = "t2.micro"
    type=string
  
}

variable "ami_ids" {
    description = "Amazon Machine Image ID"
    type = string
    default = "ami-085ad6ae776d8f09c"

  
}
variable "bucket_name" {
    description = "Name of the S3 bucket"
    type=string
    default = "myterraforms3bucket1845"
    
}

