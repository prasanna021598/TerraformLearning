resource "aws_route53_record" "r53records" {
  for_each = aws_instance.expense
  zone_id = local.zone_id
  name    = each.key == "Frontend-prod" ? local.domain-name : "${each.key}.${local.domain-name}"
  type    = "A"
  ttl     =  1
  records = startswith(each.key , "Frontend")  ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}