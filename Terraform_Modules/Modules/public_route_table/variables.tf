#Variables for  public Route Table
variable "public_route_table_cidr"{
    description = "CIDR block for public route table"
}

variable "public_route_table_tags"{
    description = "Name Tag for public route table"
}   

variable "vpc_id"{
    description = "ID of the VPC"
}

variable "internet_gateway_id"{
    description = "ID of the internet gateway"
}
    