output "sg_id" {
  value = aws_security_group.my-sg.id
}

output "public_subnet_id" {
  value = aws_subnet.my-sub1.id
}