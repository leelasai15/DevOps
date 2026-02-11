# Variables for NAT Gateway
variable "public_subnet_id" {
  description = "ID of the public subnet where NAT Gateway will be placed"
}

variable "nat_gateway_tags" {
  description = "Name Tag for NAT Gateway"
}

variable "allocation_id" {
  description = "Allocation ID of the Elastic IP"
}
