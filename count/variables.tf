variable "image_id" {
    default  = "ami-090252cbe067a9e58"
    type = string
}

variable "instance_type" {
    default = "t3.small"
    type = string
}

variable "tags" {
    default =  {
        Name = "Nextnamemy"
        name = "sai"
    }
}

variable "instance_names" {
    type = list(string)
    default = [ "DB" , "Frontend" , "Backend" ]
  
}