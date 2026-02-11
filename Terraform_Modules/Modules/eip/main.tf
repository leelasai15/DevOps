# Elastic IP Creation
resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = var.eip_name
  }
}
