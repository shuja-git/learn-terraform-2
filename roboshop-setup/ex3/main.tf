resource "aws_instance" "ec2" {
  for_each = var.instances
  ami           = "ami-03265a0778a880afb"
  instance_type = each.value["type"]
  vpc_security_group_ids = ["sg-0e091f7374dd1d5de"]
  tags = {
    Name = each.value["name"]
  }
}
variable "instances" {
  default = {
    cart = {
      name = "cart"
      type = "t2.micro"
    },
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    },
    user = {
      name = "user"
      type = "t2.micro"
    }
  }
}
output "ec2-details" {
  value = [for k,v in aws_instance.ec2: v.private_dns]
}
#output "ec2" {
#  value = [for k, v in aws_instance.ec2: "${k} - ${v.public_ip}"]
#
#}
