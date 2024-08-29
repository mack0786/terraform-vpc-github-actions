variable "sg_id" {
    description = "SG OD for ec2"
    type = string
}

variable "subnets" {
    description = "Subent for ec2"
    type = list(string)
}

variable "ec2-names" {
    description = "Name of instances"
    type = list(string)
    default = [ "VM1", "VM2" ]
}