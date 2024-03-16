resource "aws_instance" "frontend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09ef698c04eeb1d92"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09ef698c04eeb1d92"]
  tags = {
    Name = "MySql"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09ef698c04eeb1d92"]
  tags = {
    Name = "backend"
  }
}