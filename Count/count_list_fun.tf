provider "aws" {
  region = "ap-south-1"
}

variable "server_name" {
  type    = list(string)
  default = ["demo1", "demo2"]
}

resource "aws_instance" "testing" {
  instance_type = "t2.micro"
  ami           = "ami-0cf8ec67f4b13b491"
  count         = length(var.server_name)
  tags = {
    Name = var.server_name[count.index]
  }
}

output "printfun"{
    value = aws_instance.testing[*].id

}