output "private_subnet_id" {
    description = "ID of the private subnet"
    value = aws_subnet.private.id
}