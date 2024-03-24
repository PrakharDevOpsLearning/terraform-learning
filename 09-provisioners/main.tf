resource "aws_instance" "provisioner" {

  ami = "ami-05f020f5935e52dc4"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.selected.id]
  tags = {
    name="provisioner"
  }

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = DevOps321
      host     = self.public_ip
    }

    inline = [
      "sudo dnf install nginx",
      "sudo systemctl restart nginx"
    ]
  }
}

data "aws_security_group" "selected" {
  name = "allow-all"
}