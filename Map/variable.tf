variable "image" {
    type = map
    description = "AMI ID's"
    default = {
        dev = "ami-02d26659fd82cf299"
        prod = "ami-0cf8ec67f4b13b491"
    }
  
}

variable "hw" {
    type = map
    description = "H/W Types"
    default = {
        dev = "t2.micro"
        prod = "t3.micro"
    }
  
}