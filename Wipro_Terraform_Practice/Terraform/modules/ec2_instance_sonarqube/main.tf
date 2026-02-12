# EC2 Instance
resource "aws_instance" "ec2_sonarqube" {
  ami                         = var.sonarqube_ami
  instance_type               = var.sonarqube_instance_type
  key_name                    = var.sonarqube_key_name
  vpc_security_group_ids      = [var.sonarqube_vpc_security_group_ids]
  subnet_id                   = var.sonarqube_subnet_id
  associate_public_ip_address = var.sonarqube_associate_public_ip_address
  availability_zone           = var.sonarqube_availability_zone

  tags = {
    Name = var.sonarqube_tags
  }
}
