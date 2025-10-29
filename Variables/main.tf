provider "aws" {
  region = var.region
}
resource "aws_s3_bucket" "S3test" {
    bucket = var.bucket
  
}