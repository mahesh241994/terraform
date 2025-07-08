locals {
  instance_type = var.instance_names=="backend" ? "t3.large" : "t3.small"
  sg = "sg-08c43f1c634ee1d1c"
}
