output "pib" {
  value = aws_lightsail_instance.centos9.public_ip_address
}
output "user" {
  value = aws_lightsail_instance.centos9.username
}
output "ssh-command" {
  # This output will show the command to connect to the Lightsail instance
  # ssh -i sshkey.pem centos@<public_ip>
  value = "ssh -i ${local_file.lightsail.filename} ${aws_lightsail_instance.centos9.username}@${aws_lightsail_instance.centos9.public_ip_address}"
}