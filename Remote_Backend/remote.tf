terraform {
  backend "s3" {
    region = "ap-south-1"
    bucket = "Backup_Bucket" ## Specify your bucket name which already created
    key = "terraform.tfstate"
    dynamodb_table = "Test" ## Need  create dynamo DB table with the coulmn name should be "LockID"
  }
}