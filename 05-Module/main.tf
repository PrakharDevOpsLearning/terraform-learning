module "demo-1" {
  source = "./demo"
  Name = "Frontend"
  Instance =  "t3.small"
  secGrp = data.aws_security_group.selected.id
}

module "demo-2" {
  source = "./demo"
  Name = "Backend"
  Instance = "t3.small"
  secGrp = data.aws_security_group.selected.id
}

module "demo-3" {
  source = "./demo"
  Name = "Mysql"
  Instance = "t3.small"
  secGrp = data.aws_security_group.selected.id
}


data "aws_security_group" "selected" {
  name = "allow-all"
}