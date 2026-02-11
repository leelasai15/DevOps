# Private Route Table Creation
resource "aws_route_table" "private-route-table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.private_route_table_cidr
    nat_gateway_id = var.nat_gateway_id
  }

  tags = {
    Name = var.private_route_table_tags
  }
}