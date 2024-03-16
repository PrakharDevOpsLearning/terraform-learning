resource "aws_instance" "frontend" {
  ami           = var.aws_ami
  instance_type = var.ins_type
  vpc_security_group_ids = var.sec_grp
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mysql" {
  ami           = var.aws_ami
  instance_type = var.ins_type
  vpc_security_group_ids = var.sec_grp
  tags = {
    Name = "MySql"
  }
}

resource "aws_instance" "backend" {
  ami           = var.aws_ami
  instance_type = var.ins_type
  vpc_security_group_ids = var.sec_grp
  tags = {
    Name = "backend"
  }
}

variable "aws_ami" {
  default = "ami-05f020f5935e52dc4"
}

variable "ins_type"{
  default = "t3.micro"
}

variable "sec_grp" {
default = "sg-09ef698c04eeb1d92"
}
