resource "aws_instance" "creatinginstance" {
  count = length(var.instance_names)
  ami           = var.image_id
  instance_type = var.instance_names[count.index] == "DB" ? var.instance_type : "t3.micro"
  vpc_security_group_ids = [aws_security_group.awssecuritygroup.id]
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_security_group" "awssecuritygroup" {
  #vpc_id = aws_vpc.example.id
  tags = var.tags
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