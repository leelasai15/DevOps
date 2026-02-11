# private Subnet Creation
resource "aws_subnet" "private" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.private_availability_zone

  tags = {
    Name = var.private_subnet_tags
  }
}