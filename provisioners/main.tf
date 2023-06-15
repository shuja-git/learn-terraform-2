data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "ec2" {
  for_each = var.instances
  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["type"]
  vpc_security_group_ids = ["sg-0e091f7374dd1d5de"]
  tags = {
    Name = each.value["name"]
  }

  connection {
    type     = "ssh"
    user     = "root"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo Hello World"
    ]
  }

}

