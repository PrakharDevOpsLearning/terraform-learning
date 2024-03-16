resource "aws_instance" "backend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  tags = {
    Name = "backend"
  }
  vpc_security_group_ids = ["sg-09ef698c04eeb1d92"]
}

