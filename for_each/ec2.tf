resource "aws_instance" "Expence" {
    for_each = var.instnce_names
    ami = data.aws_ami.ami_info.id
    instance_type = each.value["type"]

    tags = {
        name = each.key
    }
}