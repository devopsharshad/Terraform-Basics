provider "aws"{
    region = "ap-south-1"
}
variable "env"{
    type = string
    description = "kindly enter env as prod,dev,test"
}

variable "poc"{
    type= bool
    default = true
}



resource "aws_instance" "web1"{
    instance_type = "${var.env == "prod" || var.env == "dev" ? "t2.micro" : "t2.small" }"
    count = "${var.poc == true ? 2 : 1}"
    ami = "ami-06fa3f12191aa3337"
}