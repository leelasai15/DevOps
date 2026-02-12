#Varible Declaration for vpc block
variable "vpc_cidr_block" {
    description = "CIDR block for VPC"
}
variable "vpc_instance_tenancy"{
    description = "Instance tenancy for VPC"
}
variable "vpc_name_tag"{
    description = "Name tag for VPC"
}
