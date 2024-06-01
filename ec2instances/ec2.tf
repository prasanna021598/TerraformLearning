resource "aws_instance" "aws_ami" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0c2beed887a521a23"]
    instance_type = "t3.micro"
    tags = {
      Name = "Charan"
    }
}