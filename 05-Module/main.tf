module "demo-1" {
  source = "./demo"
  Name = "DEMO-1"
  Instance =  "t2.micro"
  secGrp = data.aws_security_group.selected.id
}

module "demo-2" {
  source = "./demo"
  Name = "DEMO-2"
  Instance = "t3.micro"
  secGrp = data.aws_security_group.selected.id
}

data "aws_security_group" "selected" {
  name = "allow-all"
}