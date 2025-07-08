variable instance_names {
    type =list
    default = ["Frontend","Db","backend"]
}

variable tags {
    default = {
        project = "mahesh-expense"
        environment = "Dev"
    }
}