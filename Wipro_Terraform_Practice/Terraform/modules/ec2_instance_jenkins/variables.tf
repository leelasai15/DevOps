variable "jenkins_ami" {
    description = "AMI for EC2 instance"
}

variable "jenkins_instance_type" {
    description = "Instance type for EC2 instance"
}

variable "jenkins_key_name" {
    description = "Key name for EC2 instance"
}

variable "jenkins_vpc_security_group_ids" {
    description = "Security group IDs for EC2 instance"
}

variable "jenkins_subnet_id" {
    description = "Subnet ID for EC2 instance"
}

variable "jenkins_associate_public_ip_address" {
    description = "Associate public IP address for EC2 instance"
}

variable "jenkins_availability_zone" {
    description = "Availability zone for EC2 instance"
}

variable "jenkins_tags" {
    description = "Tags for EC2 instance"
}
