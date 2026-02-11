output "instance_id" {
    description = "ID of the EC2 instance"
    value       = aws_instance.ec2.id
}

output "private_ip" {
    description = "Private IP address of the EC2 instance"
    value       = aws_instance.ec2.private_ip
}
