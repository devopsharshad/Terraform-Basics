variable "hw" {
    type = string
    description = "give hardware details"
    default = "t2.micro"
  
}

variable "image" {
    type = string
    description = "AMI Details"
    default = "ami-06fa3f12191aa3337" 
}

variable "name" {
    type = string
    default = "Demo"
  
}

variable "bucket_name" {
    type = string
    description = "Give bucket name"
    default = null
  
}

variable "bucket_need" {
  type = bool
  default = false
}