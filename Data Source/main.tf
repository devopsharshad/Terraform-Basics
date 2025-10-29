provider "aws" {

  region = "ap-south-1"

}

data "aws_ami" "ami1" {
  most_recent = true
  owners = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]

  }


}

resource "aws_instance" "web1" {
  ami           = data.aws_ami.ami1.id
  instance_type = "t3.micro"
}