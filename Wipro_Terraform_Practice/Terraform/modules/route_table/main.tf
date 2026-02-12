#Route Table Module Creation
resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.route_table_cidr_block
    gateway_id = var.igw_id
  }

  tags = {
    Name = var.route_table_name_tag
  }
}