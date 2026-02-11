#Variables for private Route Table
variable "private_route_table_cidr"{
    description = "CIDR block for private route table"
}

variable "private_route_table_tags"{
    description = "Name Tag for private route table"
}   

variable "vpc_id"{
    description = "ID of the VPC"
}

variable "nat_gateway_id"{
    description = "ID of the NAT gateway"
}
