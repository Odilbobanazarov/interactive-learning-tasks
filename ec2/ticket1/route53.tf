resource "aws_route53_record" "wordpress" {
  zone_id = "Z0979855134EVEQC3D0PS"
  name    = "wordpress.odilcyberdevop.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}
