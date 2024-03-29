# Declare the variable with value

variable "x" {
  default = "prakhar"
}

# Declare the variable without value

# variable "y" {} --> Interactive approach we generally don't follow

# variable of list

variable "x_list" {
 default = [10,20,30]
}

# variable with map

variable "z_map" {
  default = {
    x = { a= [111,112,113] }
    y = "jyoti"
    z = "AWS"
  }
}

# print variables

output "x" {
  value = var.x
}

#output "y" {
#  value = var.y
#}

output "x_list" {
  value = var.x_list
}

output "x_list_index" {
  value = var.x_list[2]
}

output "z_map" {
  value = var.z_map
}


output "z_map_index" {
  value = var.z_map["x"]
}

output "substitution" {
  value = var.z_map["x"]["a"][0]

}

# we can declare empty variables, But data can be sent from a file , those files are called as tfvars

#command to run tfvars file - terraform apply -var-file filename(prod.tfvars)

variable "env" {}
output "env" {
  value = var.env
}

# *.auto.tfvars are the files which will pick up automatically. Along with this if the filename is terraform.auto.tfvars then also terraform picks this vars file automatically, No need to specifyt exclusively

variable "common" {}
output "common" {
  value = var.common
}
