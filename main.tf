provider "aws" {
  region = var.region
}

resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ssh_key" {
  key_name   = "ssh-key"  # Provide a unique name for the key pair
  public_key = tls_private_key.ssh.public_key_openssh
}

resource "aws_instance" "ubuntu" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.ssh_key.key_name  # Connect SSH key to the instance
  tags = {
    Name = var.instance_name
  }
}
