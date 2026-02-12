# EC2 Instance
resource "aws_instance" "ec2_jenkins" {
  ami                         = var.jenkins_ami
  instance_type               = var.jenkins_instance_type
  key_name                    = var.jenkins_key_name
  vpc_security_group_ids      = [var.jenkins_vpc_security_group_ids]
  subnet_id                   = var.jenkins_subnet_id
  associate_public_ip_address = var.jenkins_associate_public_ip_address
  availability_zone           = var.jenkins_availability_zone

  tags = {
    Name = var.jenkins_tags
  }
}
