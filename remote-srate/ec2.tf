resource "aws_instance" "backend" {
  ami                = data.aws_ami.ami_info.id
  instance_type      = var.instance_type
  vpc_security_group_ids = [var.sg]
}