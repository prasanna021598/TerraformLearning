locals {
  ami = "ami-090252cbe067a9e58"
  instance_type = "t3.small"
  instance_type2 = "t3.micro"
}

locals {
  tags = {
    instance_name = "DB"
  }
}

#R53 Record variables

locals {
  zone_id = "Z07069213ORGBTZ0ROKOX"
  Name = "itindustry.online"
}