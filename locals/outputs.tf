output Public-id {
  value       = [for inst in aws_instance.Frontend : inst.public_ip]
}

output Ami_ID {
    value = [for am in aws_instance.Frontend : am.ami]
}
