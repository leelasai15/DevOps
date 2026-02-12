#subnet Variable Declaration 

variable "vpc_id" {
    description = "VPC ID for Subnet"
}
variable "subnet_cidr_block" {
    description = "CIDR block for Subnet"
}
variable "subnet_name_tag" {
    description = "Name tag for Subnet"
}
variable "availability_zone" {
    description = "Availability zone for Subnet"
}