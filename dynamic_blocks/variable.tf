variable inbound_rules {
    default = [
        {port = 22,
        protocol = "tcp",
        cidr = ["0.0.0.0/0"]
        },
        {port = 80,
        protocol = "tcp",
        cidr = ["0.0.0.0/0"]
        },
        {port = 8080,
        protocol = "tcp",
        cidr = ["0.0.0.0/0"]
        },
        {port = 8000,
        protocol = "tcp",
        cidr = ["0.0.0.0/0"]
        }
    ]
}