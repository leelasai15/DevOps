#output for security group block
output "security_group_id" {
    value = aws_security_group.security-grp.id
}