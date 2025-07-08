output public_ips {
    # value = aws_instance.DB.p
    value = [for inst in aws_instance.DB: inst.public_ip]
}

output private_ips {
    value = [for insts in aws_instance.DB : insts.private_ip]
}
