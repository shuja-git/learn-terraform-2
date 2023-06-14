resource "aws_instance" "ec2" {
  count = length(var.instances)
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0e091f7374dd1d5de"]
  tags = {
    Name = "HelloWorld"
  }
}
variable "instances" {
  default = ["cart","catalogue","shipping","payment","user"]
}
output "public-ip" {
  value = aws_instance.ec2.*.public_ip
}