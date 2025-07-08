resource "aws_security_group" "my_sg_group" {
    name = "my-sg-group"
    description= " is allowing for 80,22,8000,8080"

    dynamic "ingress" {
        for_each = var.inbound_rules
        content{
            from_port = ingress.value["port"]
            to_port = ingress.value["port"]
            protocol = ingress.value["protocol"]
            cidr_blocks = ingress.value["cidr"]
        }
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ports"
        CreatedBy = "Mahesh"
    }

}