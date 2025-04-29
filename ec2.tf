resource "aws_instance" "Good" {
  count               = var.number_instances
  ami                 = var.ami_id
  instance_type       = var.instance_type[2]
  availability_zone   = var.availability_zone[2]
  enable_primary_ipv6 = var.enabl_primary_ipv6

  tags = var.tags

}

locals {
  count              = 2
  ami                = "ami-001c6edd94a985962"
  instance_type      = ["t2.nano", "t2.micro", "t2.medium", "t2.large"]
  availability_zone  = ["us-east-1a", "us-east-1b", "us-east-1c"]
  enabl_primary_ipv6 = false
  security_group     = "default"

  tags = {
    "Name"    = "sesay"
    "env"     = "dev"
    "owner"   = "musa"
    "project" = "practicing"
  }
}



resource "aws_instance" "app" {
  count               = local.count
  ami                 = local.ami
  instance_type       = local.instance_type[2]
  availability_zone   = local.availability_zone[2]
  enable_primary_ipv6 = local.enabl_primary_ipv6
  security_groups     = ["default"]

  tags = local.tags

}

resource "aws_vpc" "lib" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "lib"
  }
}