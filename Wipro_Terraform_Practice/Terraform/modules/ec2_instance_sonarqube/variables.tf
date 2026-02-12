variable "sonarqube_ami" {
    description = "AMI for EC2 instance"
}

variable "sonarqube_instance_type" {
    description = "Instance type for EC2 instance"
}

variable "sonarqube_key_name" {
    description = "Key name for EC2 instance"
}

variable "sonarqube_vpc_security_group_ids" {
    description = "Security group IDs for EC2 instance"
}

variable "sonarqube_subnet_id" {
    description = "Subnet ID for EC2 instance"
}

variable "sonarqube_associate_public_ip_address" {
    description = "Associate public IP address for EC2 instance"
}

variable "sonarqube_availability_zone" {
    description = "Availability zone for EC2 instance"
}

variable "sonarqube_tags" {
    description = "Tags for EC2 instance"
}
