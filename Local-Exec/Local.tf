provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "test1" {
  instance_type = "t2.micro"
  ami           = "ami-06fa3f12191aa3337"

provisioner "local-exec" {

  command = "mkdir /root/testing/ && touch /root/testing/abc"
}
}