variable "sg_id" {
    description = "SG ID for alb"
    type = string
}

variable "subnets" {
    description = "subnets for alb"
    type = list(string)
}

variable "vpc_id" {
    description = "VPC ID for target group"
    type = string
}

variable "instances" {
    description = "Instance ID for target group attachment"
    type = list(string)
}