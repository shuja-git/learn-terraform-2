resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "frontend-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "cart-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "catalogue-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "user-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "shipping-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "payment-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "mysql-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "mongodb-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "redis-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq-rec" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "rabbitmq-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}
