variable "instance_names" {
    type = map 
    default = {
        DB = "t3.small"
        Frontend = "t3.micro"
        Backend = "t3.micro"
    }
}

variable "common_tags" {
    type = map 
    default = {
        Name = "Expense"
        Project = "MyProject"
    }
  
}

