# Variables for public Subnet
variable "public_subnet_cidr"{
    description = "CIDR block for public subnet"
}

variable "availability_zone"{
    description = "Availability zone for public subnet"
}

variable "public_subnet_tags"{
    description = "Name Tag for public subnet"
}   

variable "vpc_id"{
    description = "ID of the VPC"
}