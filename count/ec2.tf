resource "aws_instance" "DB" {
    count = length(var.instance_names)
    ami =  var.ami_id
    instance_type =  var.instance_type == "DB" ? "t3.small" : var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
        name = var.instance_names[count.index]
    }
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "this for allowing ssh protocol"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}