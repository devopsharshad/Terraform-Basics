provider "aws"{
    region = "ap-south-1"
}

variable "images"{
    type = map
    default = {
        ap-south-1 ="ami-06fa3f12191aa3337"
        us-east-1 ="ami-0fd3ac4abb734302a"
    }
}

variable "region_name"{
    type =string
    description = "Enter the region"
}
resource "aws_instance" "web2" {
    ami = lookup(var.images,var.region_name)
    instance_type = "t2.micro"
    user_data = templatefile("data.tftpl",{} ) 
}

output "IP"{
    value = aws_instance.web2.public_ip
}
