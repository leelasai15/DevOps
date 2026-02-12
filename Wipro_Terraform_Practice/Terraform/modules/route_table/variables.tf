#Variable Declaration for route table
variable "vpc_id" {
    description = "VPC ID for Route Table"
}
variable "route_table_cidr_block" {
    description = "CIDR block for Route Table"
}
variable "igw_id" {
    description = "IGW ID for Route Table"
}
variable "route_table_name_tag" {
    description = "Name tag for Route Table"
}
