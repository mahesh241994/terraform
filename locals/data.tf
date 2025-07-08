data "aws_ami" "ami-info" {
    most_recent = true

   filter {
    name= "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20250610"]
   }
    filter {
        name = "root-device-type"
        values = ["ebs"]
    }
    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
    owners = ["099720109477"]
}


# data "aws_ami" "ami-info" {
#   most_recent = true

#   filter {
#     name   = "image-id"
#     values = ["ami-020cba7c55df1f615"]
#   }

#  owners = ["099720109477"] 
# }
