output "vpc_id" {
    value = aws_vpc.My-vpc.id
}

output "subnet_ids" {
    value = aws_subnet.subnets.*.id
}