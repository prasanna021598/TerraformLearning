variable "instance_names" {
    default = ["DB" , "Frontend" , "Backend"] 
}

variable "instance_names_multi" {
  default = {
    DB = "t3.small"
    Frontend = "t3.micro"
    Backend = "t3.micro"
  }
  type = map
}