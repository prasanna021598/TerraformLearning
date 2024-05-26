data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["973714476881"]
  filter {
    name = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

}


data "aws_security_group" "security_group" {
    id = "sg-0c2beed887a521a23"
}

#resource "aws_subnet" "subnet" {
  #vpc_id     = data.aws_security_group.selected.vpc_id
  #cidr_block = "10.0.1.0/24"
#}
