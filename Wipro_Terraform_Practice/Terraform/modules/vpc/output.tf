#VPC Module Output
output "vpc_id" {
    value = aws_vpc.vpc.id
}