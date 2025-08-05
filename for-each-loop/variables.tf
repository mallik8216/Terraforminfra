variable "instances" {
    type = map
    default = {
        mysql ="t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "zone_id" {
    default = "Z063606622UZ9ASTGSSUQ"
}


variable "domain_name" {
   default = "itsmyroot82.fun"
}

variable "common_tags" {
  type = map
  default = {
    project ="expense"
    Environment ="dev"
  }
}