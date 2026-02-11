# Public Route Table Creation
resource "aws_route_table" "route-table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.public_route_table_cidr
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = var.public_route_table_tags
  }
}