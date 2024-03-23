resource "aws_instance" "demo1" {
  #ami          = data.aws_instance.selected.ami
  ami                    = "ami-05f020f5935e52dc4"
  instance_type          = var.Instance
  vpc_security_group_ids = [var.secGrp]
  tags = {
    Name = var.Name
  }

}


variable "Name" {}
variable "Instance" {}
variable "secGrp" {}