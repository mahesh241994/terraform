resource "aws_instance" "Frontend" {
    count = length(var.instance_names)
    ami = data.aws_ami.ami-info.id
    instance_type = local.instance_type
    vpc_security_group_ids = [local.sg]
    tags = {
        name = var.instance_names[count.index]

    }
}