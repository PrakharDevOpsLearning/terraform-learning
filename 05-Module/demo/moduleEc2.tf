resource "aws_instance" "demo1" {
  ami           = data.aws_instance.selected.ami
  instance_type = "t3.micro"
  Name = "demo-1"
}

data "aws_instance" "selected" {
  tags = {
    Name = "workstation"
  }
}