data "aws_ami" "ami_info" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20250610"]

  }
  owners = ["099720109477"]
}