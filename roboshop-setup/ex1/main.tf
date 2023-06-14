resource "aws_instance" "ec2" {
  count = length(var.instances)
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
variable "instances" {
  default = ["cart","catalogue","shipping","payment","user"]
}
