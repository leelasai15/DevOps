# VPC Module
module "vpc" {
  source = "../modules/vpc"

  vpc_cidr_block       = var.vpc_cidr_block
  vpc_instance_tenancy = var.vpc_instance_tenancy
  vpc_name_tag         = var.vpc_name_tag
}

#Subnet Module
module "subnet" {
  source = "../modules/subnet"

  vpc_id = module.vpc.vpc_id
  subnet_cidr_block = var.subnet_cidr_block
  subnet_name_tag = var.subnet_name_tag
  availability_zone = var.availability_zone
}

#Internet Gateway Module
module "igw" {
  source = "../modules/internet_gateway"

  vpc_id = module.vpc.vpc_id
  igw_name_tag = var.igw_name_tag
}

#Route Table Module
module "route_table" {
  source = "../modules/route_table"

  vpc_id = module.vpc.vpc_id
  igw_id = module.igw.igw_id
  route_table_cidr_block = var.route_table_cidr_block
  route_table_name_tag = var.route_table_name_tag
}

#Route Table Association Module
module "route_table_association" {
  source = "../modules/route_table_assosiation"

  subnet_id = module.subnet.subnet_id
  route_table_id = module.route_table.route_table_id
}

#Key Pair Module
module "key_pair" {
  source = "../modules/keypair"

  key_name = var.key_name
  public_key = var.public_key
}

# Security Group Module
# Security Group Module
module "security_group" {
    source = "../modules/security_group"
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


#Public EC2 Jenkins Instance Module
module "public_ec2_jenkins" {
    source = "../modules/ec2_instance_jenkins"
    jenkins_ami                         = var.public_jenkins_ami
    jenkins_instance_type               = var.public_jenkins_instance_type
    jenkins_key_name                    = var.public_jenkins_key_name
    jenkins_vpc_security_group_ids      = module.security_group.security_group_id
    jenkins_subnet_id                   = module.subnet.subnet_id
    jenkins_associate_public_ip_address = var.public_jenkins_associate_public_ip_address
    jenkins_availability_zone           = var.public_jenkins_availability_zone
    jenkins_tags                        = var.public_jenkins_tags
}

#Public EC2  Sonarqube Instance Module
module "public_ec2_sonarqube" {
    source = "../modules/ec2_instance_sonarqube"
    sonarqube_ami                         = var.public_sonarqube_ami
    sonarqube_instance_type               = var.public_sonarqube_instance_type
    sonarqube_key_name                    = var.public_sonarqube_key_name
    sonarqube_vpc_security_group_ids      = module.security_group.security_group_id
    sonarqube_subnet_id                   = module.subnet.subnet_id
    sonarqube_associate_public_ip_address = var.public_sonarqube_associate_public_ip_address
    sonarqube_availability_zone           = var.public_sonarqube_availability_zone
    sonarqube_tags                        = var.public_sonarqube_tags
}
