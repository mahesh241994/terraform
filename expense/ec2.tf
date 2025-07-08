

resource "aws_instance" "db"{
    count = length(var.instance_names)
    ami = var.imageid
    vpc_security_group_ids = [var.sg]
    instance_type = var.instance_names == "FRONTEND" ? "t3.small" : "t3.micro"

    tags = {
        name = var.instance_names[count.index]
    }
}

