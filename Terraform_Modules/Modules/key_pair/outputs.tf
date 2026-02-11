output "key_pair_name" {
    description = "Name of the key pair"
    value = aws_key_pair.key-pair.key_name
}

output "key_pair_id" {
    description = "ID of the key pair"
    value = aws_key_pair.key-pair.id
}
