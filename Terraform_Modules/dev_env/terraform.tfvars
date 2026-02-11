#variable values for Dev region
dev_region = "us-west-2"

#-----------------------------------------------------
# variable values for VPC
vpc_cidr = "10.0.0.0/16"
instance_tenancy = "default"
vpc_tags = "leelasai-dev-vpc"

#-----------------------------------------------------
# variable values for public Subnet
public_subnet_cidr = "10.0.1.0/24"
availability_zone = "us-west-2a"
public_subnet_tags = "leelasai-dev-public-subnet"   

#-----------------------------------------------------
# variable values for private Subnet
private_subnet_cidr = "10.0.2.0/24"
private_availability_zone = "us-west-2b"
private_subnet_tags = "leelasai-dev-private-subnet"

#-----------------------------------------------------
# variable values for Internet Gateway
internet_gateway_tags = "leelasai-dev-internet-gateway"

#-----------------------------------------------------
# variable values for public Route Table
public_route_table_cidr = "0.0.0.0/0"
public_route_table_tags = "leelasai-dev-public-route-table"

#------------------------------------------------------
# variable values for NAT Gateway
nat_gateway_tags = "leelasai-dev-nat-gateway"

#------------------------------------------------------
# variable values for Elastic IP
eip_tags = "leelasai-dev-eip"

#-----------------------------------------------------
# variable values for private Route Table
private_route_table_cidr = "0.0.0.0/0"
private_route_table_tags = "leelasai-dev-private-route-table"



#-----------------------------------------------------
# variable values for Generating key pair
key_pair_name = "leelasai-dev-key"
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDuX1WarRn2EGKNlIL8S4By33WoXw3129t9xmkmBy5AFxDupHGYNo7Rc9i/K5SnCWKgYCHJC2J61d85H7xp5ueX0uYFOSOfZa+0+ijtF7ut7Xk2i3W14/7R02hucopgMxyjtMV6X91tbPVxmM31BM6NaHQGdjGjs+H+ejtj/cgsxlwZ+9aYPpZd5xs8J3BM6uKPigPT1fPjR+b8htigW0P8Y0FxG+6+MUjdf+bxSEywz3DZ/H7nfoYy/4hyHHXEOVP+ldjTbbX1pEU9L+DShxPXEI+u19+xUjTU+wgtej5y6j8oF3atRX9JezvS7bQFMW7zVsB0L2D9JbfYU7vQsqdt+4b7ke+AFese3kY04lacv6UP3aBM8JaS8KtCvy5FVgdR+X6EokpMfTeHmGja/5vRhaWO9DK0gfFGhx1KqRDW6Cey1vRy3gDzBL/kE/o9/TkZ4bCGJeX+u+SROvXKdOO/rpG7rzx44ua4cD8ulUDS9R2oniFB3VyyGnP4gn8nm997gWqhmUPEn1vgMhdcBfgTKu3zn2kb4mcDYJQcVwxXc6Y6tPDfTRFMKtmQ66JC6vtRTniLlfPNAC2gWwABexA10Gg6Qpr8aq381Qgo3o9RQYb1EpVHlXxvW+WKtcPI7RGYf/gBn4ZaexUdUhja4BRbx3OLGZfGEVFTk8cs1AVlhw== leelasaimacharla@MACHARLAs-MacBook-Air.local"


#-----------------------------------------------------
# variable values for security group
security_group_name = "leelasai-dev-security-group"
security_group_description = "Security group for EC2 instance"
security_group_tags = "leelasai-dev-security-group"


ingress_port1_from_port = 22
ingress_port1_to_port = 22
ingress_port1_protocol = "tcp"
ingress_port1_cidr_blocks = ["0.0.0.0/0"]

ingress_port2_from_port = 80
ingress_port2_to_port = 80
ingress_port2_protocol = "tcp"
ingress_port2_cidr_blocks = ["0.0.0.0/0"]

ingress_port3_from_port = 443
ingress_port3_to_port = 443
ingress_port3_protocol = "tcp"
ingress_port3_cidr_blocks = ["0.0.0.0/0"]

ingress_port4_from_port = 3306
ingress_port4_to_port = 3306
ingress_port4_protocol = "tcp"
ingress_port4_cidr_blocks = ["0.0.0.0/0"]

egress_port_from_port = 0
egress_port_to_port = 0
egress_port_protocol = "-1"
egress_port_cidr_blocks = ["0.0.0.0/0"]

#-----------------------------------------------------
# variable values for Public EC2 Instance
public_ami = "ami-0786adace1541ca80"
public_instance_type = "t3.micro"
public_key_name = "leelasai-dev-key"
public_associate_public_ip_address = true
public_availability_zone = "us-west-2a"
public_tags = "leelasai-dev-EC2-public-instance"

#-----------------------------------------------------
# variable values for Private EC2 Instance
private_ami = "ami-0786adace1541ca80"
private_instance_type = "t3.micro"
private_key_name = "leelasai-dev-key"
private_associate_public_ip_address = false
private_tags = "leelasai-dev-EC2-private-instance"