resource "aws_security_group" "allow_tls" {
    name = var.sg_name
    description = "Allow mu inbound triffic and all outbound traffic"
    vpc_id = var.vpc_id

    tags = var.sg-tags
  
}

