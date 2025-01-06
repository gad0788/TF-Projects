# Creating CentOS 9 Lightsail instance
resource "aws_lightsail_instance" "centos9" {
  name              = "lamp-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "centos_stream_9"
  bundle_id         = "nano_2_0"
  key_pair_name     = "sshkey"
  # Uncomment the line below if you want to use user data for instance initialization
  # user_data         = file("userdata.sh")

  tags = {
    Name = "lamp-server"
  }
}
