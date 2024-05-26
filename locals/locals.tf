locals  {
    ami = "ami-090252cbe067a9e58"
    instance_type = "t3.micro"
    security_group_id = "sg-0c2beed887a521a23"
}

# data  "aws_ami" "awsamiid" {
#     most_recent = true
#     owners = [ self ]
# }