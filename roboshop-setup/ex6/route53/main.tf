resource "aws_route53_record" "record" {
  zone_id = "Z10377495CKDE7OXJB1E"
  name    = "${var.component}-dev.shujadevops.online"
  type    = "A"
  ttl     = 300
  records = [var.private_ip]
}
