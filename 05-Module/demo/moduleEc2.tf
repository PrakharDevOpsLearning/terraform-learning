resource "aws_instance" "demo1" {
  #ami           = data.aws_instance.selected.ami
  ami = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
}

#data "aws_instance" "selected" {
#  tags = {
#    Name = "workstation"
#  }
#}