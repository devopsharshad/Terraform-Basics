module "server" {
    source = "../child_module"
  bucket_name = "testingterraform666"
  bucket_need = true
}

module "server2" {
    source = "../child_module"
    bucket_name = ""
}