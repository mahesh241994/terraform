variable imageid {
  default     ="ami-020cba7c55df1f615"
}

variable instance_names {
    type = list
    default = ["DB","FRONTEND","BACKEND"]
}

variable sg {
    default = "sg-08c43f1c634ee1d1c"
}

