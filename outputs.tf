output "instance_ami" {
  value = aws_instance.ubuntu.ami
}

output "instance_arn" {
  value = aws_instance.ubuntu.id
}

output "public_ip" {
  value = aws_instance.ubuntu.public_ip
}

output "ssh_public_key" {
  value = tls_private_key.ssh.public_key_openssh
}
