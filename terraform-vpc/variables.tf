variable "vpc-cidr" {
    description = "This is VPC CIDR range"
    type = string
}

variable "subnet-cidr" {
    description = "This is subent CIDRs"
    type = list(string)
}