resource "aws_instance" "Qt" {
    ami = var.instance_type
    instance_type = var.instance_type
    tags = var.tags
  
}