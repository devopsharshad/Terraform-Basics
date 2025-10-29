provider "aws" {
  region = "ap-south-1"
}

variable "hw"{
    type = string
    description= "enter the hw"
}

variable "name"{
 type= string
}
 

resource "aws_instance" "test" {
  ami           = "ami-06fa3f12191aa3337"
  instance_type = var.hw

  tags = {
    Name = var.name
  }
}

output "both_ips"{
  value = aws_instance.test.public_ip
}
