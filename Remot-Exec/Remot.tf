provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "testingf" {
  instance_type = "t2.micro"
  ami           = "ami-06fa3f12191aa3337"
  key_name      = "terraform"
  provisioner "remote-exec" {

    inline = [
      "sudo mkdir /root/testing",
      "sudo touch /root/testing/abc"
    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("/root/.ssh/id_rsa")
      host        = self.public_ip
    }
  }
  tags = {
    Name = "Remote-exec_testing_infra"
  }
}