variable "instances" {
  default = {
    "instance1" = "t2.micro"
    "instance2" = "t2.nano"
    "instance3" = "t2.small"
  }
}

resource "null_resource" "example" {
  for_each = var.instances

  ami           = "ami-0c94855ba95c574c8"
  instance_type = each.value
}
