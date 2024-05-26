resource "aws_instance" "expenseproject" {
    count = length(var.instance_names)
    ami = data.aws_ami.ami_id.id
    instance_type = var.instance_names[count.index] == "DB" ? local.instance_type : local.instance_type2
    vpc_security_group_ids = [data.aws_security_group.security_group.id]
    tags = {
      Name = var.instance_names[count.index]
    }
}

resource "aws_security_group" "awssecuritygroup" {
  #vpc_id = aws_vpc.example.id

  #the below is called as block not map or list
  egress {
    from_port        = 80
    to_port          = 80 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

}