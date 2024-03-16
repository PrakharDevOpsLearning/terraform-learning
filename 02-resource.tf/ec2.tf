resource "aws_instance" "frontend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  tags = {
    name = "frontend"
  }
  security_groups = ["allow-all"]

}
