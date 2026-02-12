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

variable "vpc_id"{
    description = "ID of the VPC"
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
