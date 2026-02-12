output "instance_id" {
    description = "ID of the EC2 instance"
    value       = aws_instance.ec2_sonarqube.id
}

output "public_ip" {
    description = "Public IP address of the EC2 instance"
    value       = aws_instance.ec2_sonarqube.public_ip
}
