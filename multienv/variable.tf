variable "instance_names" {
    type = map 
    default = {
        # DB-dev = "t3.small"
        # Frontend-dev = "t3.micro"
        # Backend-dev = "t3.micro"
    }
}

variable "common_tags" {
    type = map 
    default = {
        Name = "MultiEnvProject"
        Project = "Expense"
        terraform = true
    }
}

variable "environment" {
    # default = "dev"
}


