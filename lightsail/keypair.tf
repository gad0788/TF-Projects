# This file creates a new key pair for Lightsail instances
resource "tls_private_key" "lightsail" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
# This file creates a new key pair for Lightsail instances
resource "aws_lightsail_key_pair" "lightsail" {
  name       = "sshkey"
  public_key = tls_private_key.lightsail.public_key_openssh
}
# This file creates and save locally the private key for the Lightsail key pair
resource "local_file" "lightsail" {
  content         = tls_private_key.lightsail.private_key_pem
  filename        = "sshkey.pem"
  file_permission = "0400"
}
