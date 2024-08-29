data "aws_ami" "amazon-2" {
    most_recent = true
    owners = ["amazon"]

    filter {
      name = "name"
      values = ["amzn2-ami-hvm*"] #["ubuntu/images/hvm-ssd*"]
    }

    # filter {
    #   name = "virtualization"
    #   values = ["hvm"]
    # }
    
}

data "aws_availability_zones" "av" {
    state = "available"
}