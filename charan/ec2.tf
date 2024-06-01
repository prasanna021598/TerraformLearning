resource "aws_instance" "aws_ami" {
    ami = "ami-090252cbe067a9e58"
    count = var.instance_count
    vpc_security_group_ids = ["sg-0ef48e55b500fa807"]
    instance_type = "t3.micro"
    tags = {
      Name = "${var.instance_names}.${count.index + 1}"
    }
}