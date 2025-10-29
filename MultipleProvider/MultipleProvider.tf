provider "aws" {
    region = "ap-south-1"
    alias = "a"
}

resource "aws_instance" "Test1" {
    instance_type = "t2.micro"
    provider = aws.a
    ami = "ami-01b6d88af12965bb6"
   tags = {
    Name= "God1"
   }
}

provider "aws" {
    region = "us-east-1"
    alias = "b"
}

resource "aws_instance" "Test2" {
    instance_type = "t2.micro"
    provider = aws.b
    ami = "ami-0341d95f75f311023"
   tags = {
    Name= "God2"
   }
}