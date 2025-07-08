variable ami_id {
  type        = string
  default     = "ami-020cba7c55df1f615"
  description = "description"
}

variable instance_names {
    type = list
    default = ["DB","FRONTEND","BACKEND"]
}
variable instance_type {
    default= "t3.micro"
}