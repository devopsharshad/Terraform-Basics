variable "images" {
  type = map(any)
  default = {
    dev  = "ami-02d26659fd82cf299"
    prod = "ami-0cf8ec67f4b13b491"
  }

}
variable "hw_type" {
  type        = string
  description = "enter the env"
}