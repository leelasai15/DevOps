# Security Group for EC2 Instance
resource "aws_security_group" "security-grp" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.security_group_tags
  }

    ingress {
    from_port        = var.ingress_port1_from_port
    to_port          = var.ingress_port1_to_port
    protocol         = var.ingress_port1_protocol
    cidr_blocks      = var.ingress_port1_cidr_blocks
  }

    ingress {
    from_port        = var.ingress_port2_from_port
    to_port          = var.ingress_port2_to_port
    protocol         = var.ingress_port2_protocol
    cidr_blocks      = var.ingress_port2_cidr_blocks
  }
    ingress {
    from_port        = var.ingress_port3_from_port
    to_port          = var.ingress_port3_to_port
    protocol         = var.ingress_port3_protocol
    cidr_blocks      = var.ingress_port3_cidr_blocks
  }
    ingress {
    from_port        = var.ingress_port4_from_port
    to_port          = var.ingress_port4_to_port
    protocol         = var.ingress_port4_protocol
    cidr_blocks      = var.ingress_port4_cidr_blocks
  }

    egress {
    from_port        = var.egress_port_from_port
    to_port          = var.egress_port_to_port
    protocol         = var.egress_port_protocol
    cidr_blocks      = var.egress_port_cidr_blocks
  }
}