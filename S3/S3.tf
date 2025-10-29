provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "S3test" {

  bucket = "test194709"
}

resource "aws_s3_bucket_versioning" "S3version" {
bucket = aws_s3_bucket.S3test.id

versioning_configuration {
  status = "Enabled"
}
}