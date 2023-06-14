terraform {
  backend "s3" {
    bucket = "shuja-remote-s3-bucket"
    key    = "s3-remote/terraform.tfstate"
    region = "us-east-1"
  }
}
data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}
resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
