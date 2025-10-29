provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo1" {
  count         = 2
  ami           = var.images["dev"]
  instance_type = var.hw_type

  tags = {
    Name = " Demo.${count.index}"
  }
}

output "values" {
  value = aws_instance.demo1[*].public_ip
}