resource "aws_instance" "s1" {
    instance_type = var.hw
    ami = var.image
    tags = {
      Name = var.name
    }
  
}

resource "aws_s3_bucket" "bucket" {
    count = var.bucket_need == true ? 1 : 0
    bucket = var.bucket_name
    region = "ap-south-1"
}