#Varible Declaration for provider aws-region
variable "provider_region" {
    description = "Region for AWS Provider"
}


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


#Varible Declaration for subnet block 
variable "subnet_cidr_block" {
    description = "CIDR block for Subnet"
}
variable "subnet_name_tag" {
    description = "Name tag for Subnet"
}
variable "availability_zone" {
    description = "Availability zone for Subnet"
}


#Varible Declaration for internet gateway block
variable "igw_name_tag" {
    description = "Name tag for Internet Gateway"
}


#Varible Declaration for route table block
variable "route_table_cidr_block" {
    description = "CIDR block for Route Table"
}
variable "route_table_name_tag" {
    description = "Name tag for Route Table"
}


#Varible Declaration for key pair block
variable "key_name" {
    description = "Key pair name"
}
variable "public_key" {
    description = "Public key"
}


#Variables for security group
variable "security_group_name"{
    description = "Name Tag for security group"
}
variable "security_group_description"{
    description = "Description for security group"
}
variable "security_group_tags"{
    description = "Name Tag for security group"
}


variable "ingress_port1_from_port"{
    description = "From port for ingress port 1"
}
variable "ingress_port1_to_port"{
    description = "To port for ingress port 1"
}
variable "ingress_port1_protocol"{
    description = "Protocol for ingress port 1"
}
variable "ingress_port1_cidr_blocks"{
    description = "CIDR blocks for ingress port 1"
}


variable "ingress_port2_from_port"{
    description = "From port for ingress port 2"
}
variable "ingress_port2_to_port"{
    description = "To port for ingress port 2"
}
variable "ingress_port2_protocol"{
    description = "Protocol for ingress port 2"
}
variable "ingress_port2_cidr_blocks"{
    description = "CIDR blocks for ingress port 2"
}


variable "ingress_port3_from_port"{
    description = "From port for ingress port 3"
}
variable "ingress_port3_to_port"{
    description = "To port for ingress port 3"
}
variable "ingress_port3_protocol"{
    description = "Protocol for ingress port 3"
}
variable "ingress_port3_cidr_blocks"{
    description = "CIDR blocks for ingress port 3"
}
variable "ingress_port4_from_port"{
    description = "From port for ingress port 4"
}


variable "ingress_port4_to_port"{
    description = "To port for ingress port 4"
}
variable "ingress_port4_protocol"{
    description = "Protocol for ingress port 4"
}
variable "ingress_port4_cidr_blocks"{
    description = "CIDR blocks for ingress port 4"
}


variable "egress_port_from_port"{
    description = "From port for egress port"
}
variable "egress_port_to_port"{
    description = "To port for egress port"
}
variable "egress_port_protocol"{
    description = "Protocol for egress port"
}
variable "egress_port_cidr_blocks"{
    description = "CIDR blocks for egress port"
}


#Variables for public EC2 Instance
variable "public_jenkins_ami"{
    description = "AMI for EC2 instance"
}
variable "public_jenkins_instance_type"{
    description = "Instance type for EC2 instance"
}
variable "public_jenkins_key_name"{
    description = "Key name for EC2 instance"
}
variable "public_jenkins_associate_public_ip_address"{
    description = "Associate public IP address for EC2 instance"
}
variable "public_jenkins_availability_zone"{
    description = "Availability zone for EC2 instance"
}
variable "public_jenkins_tags"{
    description = "Tags for Public EC2 instance"
}
#Variables for public EC2 Sonarqube Instance
variable "public_sonarqube_ami"{
    description = "AMI for EC2 instance"
}
variable "public_sonarqube_instance_type"{
    description = "Instance type for EC2 instance"
}
variable "public_sonarqube_key_name"{
    description = "Key name for EC2 instance"
}
variable "public_sonarqube_associate_public_ip_address"{
    description = "Associate public IP address for EC2 instance"
}
variable "public_sonarqube_availability_zone"{
    description = "Availability zone for EC2 instance"
}
variable "public_sonarqube_tags"{
    description = "Tags for Public EC2 instance"
}
