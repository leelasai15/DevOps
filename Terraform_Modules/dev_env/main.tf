# VPC Module
module "vpc" {
    source = "../Modules/vpc"
    vpc_cidr = var.vpc_cidr
    instance_tenancy = var.instance_tenancy
    vpc_tags = var.vpc_tags
}


#----------------------------------------
# Public Subnet Module
module "public_subnet" {
    source = "../Modules/public_subnet"
    public_subnet_cidr = var.public_subnet_cidr
    availability_zone = var.availability_zone
    public_subnet_tags = var.public_subnet_tags
    vpc_id = module.vpc.vpc_id
}

#----------------------------------------
# Private Subnet Module
module "private_subnet" {
    source = "../Modules/private_subnet"
    private_subnet_cidr = var.private_subnet_cidr
    private_availability_zone = var.private_availability_zone
    private_subnet_tags = var.private_subnet_tags
    vpc_id = module.vpc.vpc_id
}

#----------------------------------------
# Internet Gateway Module
module "igw" {
    source = "../Modules/igw"
    internet_gateway_tags = var.internet_gateway_tags
    vpc_id = module.vpc.vpc_id
}

#----------------------------------------
# Public Route Table Module
module "public_route_table" {
    source = "../Modules/public_route_table"
    public_route_table_cidr = var.public_route_table_cidr
    public_route_table_tags = var.public_route_table_tags
    vpc_id = module.vpc.vpc_id
    internet_gateway_id = module.igw.internet_gateway_id
}

#----------------------------------------
# Elastic IP Module
module "eip" {
    source = "../Modules/eip"
    eip_name = var.eip_tags
}

#----------------------------------------
# NAT Gateway Module
module "nat_gw" {
    source = "../Modules/nat_gw"
    public_subnet_id = module.public_subnet.public_subnet_id
    nat_gateway_tags = var.nat_gateway_tags
    allocation_id    = module.eip.eip_id
}

#----------------------------------------
# Private Route Table Module
module "private_route_table" {
    source = "../Modules/private_route_table"
    private_route_table_cidr = var.private_route_table_cidr
    private_route_table_tags = var.private_route_table_tags
    vpc_id = module.vpc.vpc_id
    nat_gateway_id = module.nat_gw.nat_gateway_id
}

#----------------------------------------
# Public Route Table Association Module
module "public_route_association" {
    source = "../Modules/public_route_association"
    public_subnet_id      = module.public_subnet.public_subnet_id
    public_route_table_id = module.public_route_table.public_route_table_id
}

#----------------------------------------
# Private Route Table Association Module
module "private_route_association" {
    source = "../Modules/private_route_association"
    private_subnet_id      = module.private_subnet.private_subnet_id
    private_route_table_id = module.private_route_table.private_route_table_id
}

#----------------------------------------
# Key Pair Module
module "key_pair" {
    source = "../Modules/key_pair"
    key_pair_name = var.key_pair_name
    public_key    = var.public_key
}

#----------------------------------------
# Security Group Module
module "security_group" {
    source = "../Modules/security_grp"
    security_group_name = var.security_group_name
    security_group_description = var.security_group_description
    security_group_tags = var.security_group_tags
    vpc_id = module.vpc.vpc_id
    ingress_port1_from_port = var.ingress_port1_from_port
    ingress_port1_to_port = var.ingress_port1_to_port
    ingress_port1_protocol = var.ingress_port1_protocol
    ingress_port1_cidr_blocks = var.ingress_port1_cidr_blocks
    ingress_port2_from_port = var.ingress_port2_from_port
    ingress_port2_to_port = var.ingress_port2_to_port
    ingress_port2_protocol = var.ingress_port2_protocol
    ingress_port2_cidr_blocks = var.ingress_port2_cidr_blocks
    ingress_port3_from_port = var.ingress_port3_from_port
    ingress_port3_to_port = var.ingress_port3_to_port
    ingress_port3_protocol = var.ingress_port3_protocol
    ingress_port3_cidr_blocks = var.ingress_port3_cidr_blocks
    ingress_port4_from_port = var.ingress_port4_from_port
    ingress_port4_to_port = var.ingress_port4_to_port
    ingress_port4_protocol = var.ingress_port4_protocol
    ingress_port4_cidr_blocks = var.ingress_port4_cidr_blocks
    egress_port_from_port = var.egress_port_from_port
    egress_port_to_port = var.egress_port_to_port
    egress_port_protocol = var.egress_port_protocol
    egress_port_cidr_blocks = var.egress_port_cidr_blocks
}

#----------------------------------------
# Public EC2 Instance Module
module "public_ec2" {
    source = "../Modules/public_ec2"
    ami                         = var.public_ami
    instance_type               = var.public_instance_type
    key_name                    = var.public_key_name
    vpc_security_group_ids      = module.security_group.security_group_id
    subnet_id                   = module.public_subnet.public_subnet_id
    associate_public_ip_address = var.public_associate_public_ip_address
    availability_zone           = var.public_availability_zone
    tags                        = var.public_tags
}

#----------------------------------------
# Private EC2 Instance Module
module "private_ec2" {
    source = "../Modules/private_ec2"
    ami                         = var.private_ami
    instance_type               = var.private_instance_type
    key_name                    = var.private_key_name
    vpc_security_group_ids      = module.security_group.security_group_id
    subnet_id                   = module.private_subnet.private_subnet_id
    associate_public_ip_address = var.private_associate_public_ip_address
    availability_zone           = var.private_availability_zone
    tags                        = var.private_tags
}


