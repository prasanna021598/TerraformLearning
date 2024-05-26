resource "aws_instance" "locals" {
    #ami = data.aws_ami.awsamiid
    instance_type =  local.instance_type
    vpc_security_group_ids = [local.security_group_id]
}