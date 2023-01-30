resource "aws_route53_record" "www" {
  zone_id = "Z0979855134EVEQC3D0PS"
  name    = "blog.yourdomain"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]

}
