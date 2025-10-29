provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "test" {
  ami           = "ami-06fa3f12191aa3337"
  instance_type = "t2.micro"

  tags = {
    Name = "Testing"
  }
}

output "both_ips"{
  value = aws_instance.test.public_ip
}