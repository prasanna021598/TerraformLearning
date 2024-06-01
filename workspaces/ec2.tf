resource "aws_instance" "aws_info" {
  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = ["sg-0c2beed887a521a23"]
  instance_type = lookup(var.instance_type , terraform.workspace)
}