data "aws_ami" "ami_id" {
    most_recent = true
    owners = ["973714476881"]
    # filter {
    #     name = "id"
    #     values = ["ami-090252cbe067a9e58"]
    # }
    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }
}

data "aws_security_group" "security" {
    #most_recent = true
    id = "sg-0c2beed887a521a23"
}