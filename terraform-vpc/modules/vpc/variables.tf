variable "vpc-cidr" {
    description = "This is VPC CIDR range"
    type = string
}

variable "subnet-cidr" {
    description = "This is subent CIDRs"
    type = list(string)
}

variable "subnet-names" {
    description = "Subnet Names"
    type = list(string)
    default = [ "PublicSub1", "PublicSub2" ]
}