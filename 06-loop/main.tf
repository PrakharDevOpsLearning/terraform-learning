variable "instances" {
  default = {
    "instance1" = "t2.micro"
    "instance2" = "t2.nano"
    "instance3" = "t2.small"
  }
}

resource "null_resource" "example" {
  for_each = var.instances

  instance_type = each.value
}
