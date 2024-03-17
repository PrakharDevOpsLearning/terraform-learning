resource "aws_instance" "demo1" {
  #ami           = data.aws_instance.selected.ami
  ami = "ami-05f020f5935e52dc4"
  instance_type = var.Instance
  tags = {
    Name = var.Name
  }
   security_groups = [var.secGrp]
}


variable "Name" {}
variable "Instance" {}
variable "secGrp" {}