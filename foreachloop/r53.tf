resource "aws_route53_record" "r53records" {
  for_each = aws_instance.expense
  zone_id = local.zone_id
  name    = each.key == "Frontend" ? local.Name : "${each.key}.${local.Name}"
  type    = "A"
  ttl     =  1
  records = each.key == "Frontend" ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}