variable "instances"{
    default =["mysql",  "backend" , "frontend" ]
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
        Project = "expense"
        Environment = "dev"
    }
}

