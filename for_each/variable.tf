variable instnce_names {
    default = {
        dev_server = {
            type = "t3.micro"
        }
        prod_server = {
            type= "t3.small"
        }
    }
}

variable sg {
    default = "sg-08c43f1c634ee1d1c"
}