resource "aws_instance" "aws_info" {
  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = ["sg-0c2beed887a521a23"]
  instance_type = "t3.micro"
    
    #provisioners will run when we are creating resource
    # they will not run when the resources are created
   provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip} > private_ip.txt" #self is an aws_instance.web
  }
}