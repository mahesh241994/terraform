variable image_id {
  type        = string
  default     = "ami-0a7d80731ae1b2435"
  description = "This is allow for ami for ubuntu creation of ec2 instance"
}

variable type_instance {
    type= string
    default= "t3.micro"
    description = "This is used for creation for instance how much cpu is consumed"
}

variable tags {
    default = {
        name = "DB"
        project = "My Expence"
        envirnoment= "DEV"
    }
}

variable security_group_name {
    default = "allow_ssh"
    type = string
}

variable from_port_no {
    default = 22
}

variable protpcol_name {
    default = "tcp"
}