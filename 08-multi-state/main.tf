terraform {
  backend "s3" {}
}
output "env" {
  value = var.env
}


variable "env" {}

resource "null_resource" "example" {}