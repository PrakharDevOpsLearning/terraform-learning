variable "instances" {
  default = {

    frontend= {
      instance_type="t2.micro"
    }

    backend= {
      instance_type="t3.micro"
    }

    mysql= {
      instance_type="t3.small"
    }

  }
}


resource "aws_instance" "resource" {
  for_each      = var.instances
  instance_type = each.value["instance_type"]
  ami = var.ami
  vpc_security_group_ids = [data.aws_security_group.selected.id]
  tags = {
    Name=each.key
  }
}

variable "ami" {
}

data "aws_security_group" "selected" {
  name="allow-all"
}