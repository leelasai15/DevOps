#Variables for private Subnet
variable "private_subnet_cidr"{
    description = "CIDR block for private subnet"
}

variable "private_availability_zone"{
    description = "Availability zone for private subnet"
}

variable "private_subnet_tags"{
    description = "Name Tag for private subnet"
}   

variable "vpc_id"{
    description = "ID of the VPC"
}