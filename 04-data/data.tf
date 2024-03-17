data "aws_ec2_instance_type" "example" {
  instance_type = "t3.micro"
}

output "instance" {
  value = data.aws_ec2_instance_type.example
}

data "aws_security_group" "selected" {
  name = "allow-all"
}

variable "Sec_GrpID" {
  default = data.aws_security_group.selected.id
}
#output "Sec_Info" {
#  value = data.aws_security_group.selected
#}

output "Sec_Info" {
  value = var.Sec_GrpID
}