output "eip_id" {
  description = "Allocation ID of the Elastic IP"
  value       = aws_eip.nat.id
}
