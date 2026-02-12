output "instance_id" {
    description = "ID of the EC2 instance"
    value       = aws_instance.ec2_jenkins.id
}

output "public_ip" {
    description = "Public IP address of the EC2 instance"
    value       = aws_instance.ec2_jenkins.public_ip
}
