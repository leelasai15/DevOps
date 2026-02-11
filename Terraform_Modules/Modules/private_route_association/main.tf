# Private Subnet Route Table Association
resource "aws_route_table_association" "private" {
  subnet_id      = var.private_subnet_id
  route_table_id = var.private_route_table_id
}
