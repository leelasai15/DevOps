variable "ami" {
    description = "AMI for EC2 instance"
}

variable "instance_type" {
    description = "Instance type for EC2 instance"
}

variable "key_name" {
    description = "Key name for EC2 instance"
}

variable "vpc_security_group_ids" {
    description = "Security group IDs for EC2 instance"
}

variable "subnet_id" {
    description = "Subnet ID for EC2 instance"
}

variable "associate_public_ip_address" {
    description = "Associate public IP address for EC2 instance"
}

variable "availability_zone" {
    description = "Availability zone for EC2 instance"
}

variable "tags" {
    description = "Tags for EC2 instance"
}
