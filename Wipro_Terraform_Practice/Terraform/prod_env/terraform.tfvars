#Variable values for provider region
provider_region = "us-west-2"

#Variable values for vpc block
vpc_cidr_block = "10.0.0.0/16"
vpc_instance_tenancy = "default"
vpc_name_tag = "leelasai-vpc"

#Variable values for subnet block
subnet_cidr_block = "10.0.1.0/24"
subnet_name_tag = "leelasai-subnet"
availability_zone = "us-west-2a"

#Variable values for internet gateway block
igw_name_tag = "leelasai-igw"

#Variable values for route table block
route_table_cidr_block = "0.0.0.0/0"
route_table_name_tag = "leelasai-route-table"

#Variable values for key pair block
key_name = "leelasai-keypair"
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCvPE+QU0sgeCGtkM+MGEBq4GbQIKE1mm/Y+zty5Xq3VasgfyGLKmPpCZ9mmu0Cs/38ah0Q9qRbz3qecyJkZglhmsrCuLCAnR3eKd6zQ93FrBYSI/OjkwIre8FraCm1/wnQVCDSzgmsvktIE1lp4Wfd3LfkFB/RVWGlVtJ2c8K6BAuTiH4Q+X07b+tmSB2WiiSMnZ+aXbjInF1hEWvJjhvL81wZ6T8GOCAVyS/kJOU469Qw2pywyxQT/+UYDb3Jsq8FgWQ54BErWWO75a3z7/f6cIxWRsuVK0Y5EeXZaRMZuINpwGJhyP9NkJQ+0XPYuASgMa2fIq6Sf430VK3GBhEkdTgNDYEiOnFaYKbPrnUKfQu3GWLNBtSxNsQfFuHplRpxssCmrE7rnEGCS88g8Lps3ovfH0JMjzOe1+ZpSdWYbbg//5Ul2dpXhzpkjEJUVT/mQsgfoKAZRwIDEYgAHAAvdBy+rnJjgWWxUjRSAb3qUNmHZc0fONA0dTUkSq3ZJurMwkxpp5MDLQlHsM2OlDzobnVexHtvOJsMwQwwRaJCfZjbjgws99uhtJxSo/CFtVuZ4RE2CkrhCe0XnFFh29mh9TEzkDV21liVJwwalWApGhcxu6ZyH/dmVQ7NNsGsHNXU4ZznUYBt8LQGjiQMumIVJIuIDyUWvUA4eqlZrHnWRw== leelasaimacharla@MACHARLAs-MacBook-Air.local"


# variable values for security group
security_group_name = "leelasai-stage-security-group"
security_group_description = "Security group for EC2 instance"
security_group_tags = "leelasai-stage-security-group"


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

# variable values for Public EC2 Jenkins Instance
public_ami = "ami-0786adace1541ca80"
public_instance_type = "t3.medium"
public_key_name = "leelasai-keypair"
public_associate_public_ip_address = true
public_availability_zone = "us-west-2a"
public_tags = "leelasai_jenkins-EC2_instance"

# variable values for Public EC2 Sonarqube Instance
public_sonarqube_ami = "ami-0320940581663281e"
public_sonarqube_instance_type = "t3.medium"
public_sonarqube_key_name = "leelasai-keypair"
public_sonarqube_associate_public_ip_address = true
public_sonarqube_availability_zone = "us-west-2b"
public_sonarqube_tags = "leelasai_sonarqube-EC2_instance"