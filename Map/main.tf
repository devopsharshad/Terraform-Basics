provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "devlopment" {
    instance_type = var.hw["dev"]
    ami = var.image["dev"]
    tags = {
      Name = "Dev Server"
    }
}

resource "aws_instance" "production" {
    instance_type = var.hw["prod"]
    ami = var.image["prod"]
    tags = {
      Name = "Prod Server"
    }
}