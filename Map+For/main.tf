provider "aws" {
  region = "ap-south-1"

}

variable "server_name" {

  type    = list(string)
  default = ["testing1", "testing2"]

}

variable "details" {
  type = map(any)
  default = {

    Env    = "test"
    client = "self"
    job    = "bines"
  }

}

resource "aws_instance" "Demo" {

  instance_type = "t2.micro"
  ami           = "ami-0cf8ec67f4b13b491"
  for_each      = toset(var.server_name)
  tags = {
    Name = each.value
  }
}

output "printvalue" {

  value = [for a in var.server_name : "${a}"]
}

output "info" {
  value = [for a, b in var.details : "${a} is ${b}"]

}

output "otherinfo" {
  
  value =  {for a, b in var.details:a=>b}

}