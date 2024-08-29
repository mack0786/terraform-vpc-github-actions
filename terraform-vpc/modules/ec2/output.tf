output "instances" {
  value = aws_instance.my-ec2.*.id
}