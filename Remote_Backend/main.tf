provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "machine" {

    instance_type = "t3.micro"
    ami = "ami-06fa3f12191aa3337"
    tags = {
      Name = "happy"
    }
  
}
