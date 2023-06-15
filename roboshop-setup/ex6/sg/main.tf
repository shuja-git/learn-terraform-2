resource "aws_security_group" "sg" {
name = "securityGroup"
description = "Allow HTTP and SSH traffic via Terraform"

ingress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}
}
output "sg_id" {
  value = aws_security_group.sg.id
}