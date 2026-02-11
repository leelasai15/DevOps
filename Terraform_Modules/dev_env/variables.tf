#Variables for Dev region
variable "dev_region"{
    description = "Region for development environment"
}

#------------------------------------------------------
# Variables for VPC
variable "vpc_cidr"{
    description = "CIDR block for VPC"
}

variable "instance_tenancy"{
    description = "Instance tenancy for VPC"
}

variable "vpc_tags"{
    description = "Name Tag for VPC"
}   

#------------------------------------------------------
# Variables for public Subnet
variable "public_subnet_cidr"{
    description = "CIDR block for public subnet"
}

variable "availability_zone"{
    description = "Availability zone for public subnet"
}

variable "public_subnet_tags"{
    description = "Name Tag for public subnet"
}   


#------------------------------------------------------
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

#------------------------------------------------------
#Variables for Internet Gateway
variable "internet_gateway_tags"{
    description = "Name Tag for internet gateway"
}   


#------------------------------------------------------
#Variables for  public Route Table
variable "public_route_table_cidr"{
    description = "CIDR block for public route table"
}

variable "public_route_table_tags"{
    description = "Name Tag for public route table"
}   

#------------------------------------------------------
#Variables for NAT Gateway
variable "nat_gateway_tags"{
    description = "Name Tag for NAT gateway"
}   

#------------------------------------------------------
#Variables for Elastic IP
variable "eip_tags"{
    description = "Name Tag for Elastic IP"
}   

#------------------------------------------------------
#Variables for private Route Table
variable "private_route_table_cidr"{
    description = "CIDR block for private route table"
}

variable "private_route_table_tags"{
    description = "Name Tag for private route table"
}   




#-----------------------------------------------------
#Variables for Key Pair
variable "key_pair_name"{
    description = "Name for the Key Pair"
}   

variable "public_key"{
    description = "Public Key for the Key Pair"
}   

#-----------------------------------------------------

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

#-----------------------------------------------------
#Variables for public EC2 Instance
variable "public_ami"{
    description = "AMI for EC2 instance"
}

variable "public_instance_type"{
    description = "Instance type for EC2 instance"
}

variable "public_key_name"{
    description = "Key name for EC2 instance"
}

variable "public_associate_public_ip_address"{
    description = "Associate public IP address for EC2 instance"
}

variable "public_availability_zone"{
    description = "Availability zone for EC2 instance"
}

variable "public_tags"{
    description = "Tags for Public EC2 instance"
}

#-----------------------------------------------------
#Variables for private EC2 Instance
variable "private_ami"{
    description = "AMI for EC2 instance"
}

variable "private_instance_type"{
    description = "Instance type for EC2 instance"
}

variable "private_key_name"{
    description = "Key name for EC2 instance"
}

variable "private_associate_public_ip_address"{
    description = "Associate public IP address for EC2 instance"
}

variable "private_tags"{
    description = "Tags for private EC2 instance"
}
