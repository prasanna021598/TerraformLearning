resource "aws_route53_record" "r53records" {
  count = length(var.instance_names)
  zone_id = local.zone_id
  name    = var.instance_names[count.index] == "Frontend" ? local.Name : "${var.instance_names[count.index]}.${local.Name}"
  type    = "A"
  ttl     = 1
  records = var.instance_names[count.index] == "Frontend" ? [aws_instance.expenseproject[count.index].public_ip] : [aws_instance.expenseproject[count.index].private_ip]
  allow_overwrite = true
}