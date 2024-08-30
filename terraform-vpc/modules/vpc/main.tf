# VPC
resource "aws_vpc" "My-vpc" {
    cidr_block = var.vpc-cidr

    instance_tenancy = "default"

    tags = {
      Name = "My_VPC"
    }
}
# Subent
resource "aws_subnet" "subnets" {
    count = length(var.subnet-cidr)

    vpc_id = aws_vpc.My-vpc.id
    cidr_block = var.subnet-cidr[count.index]

    availability_zone = data.aws_availability_zones.az.names[count.index]

    map_public_ip_on_launch = true

    tags = {
      Name = var.subnet-names[count.index]
    }
}
# Internet Gateway
resource "aws_internet_gateway" "my-igw" {
    vpc_id = aws_vpc.My-vpc.id

    tags = {
      Name = "My-IGW"
    }
}
# Route Table
resource "aws_route_table" "my-rt" {
    vpc_id = aws_vpc.My-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my-igw.id
    }

    tags = {
      Name = "My-Route-Table"
    }
}
# Route Table Association
resource "aws_route_table_association" "rta" {
    count = length(var.subnet-cidr)

    subnet_id = aws_subnet.subnets[count.index].id
    route_table_id = aws_route_table.my-rt.id
}