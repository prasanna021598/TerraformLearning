variable "image_id" {
    default  = "ami-090252cbe067a9e58"
    type = string
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}


variable "tags" {
    default =  {
        Name = "Nextnamemy"
        name = "sai"
    }
}