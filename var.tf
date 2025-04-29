variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
  default     = "ami-001c6edd94a985962"

}

variable "instance_type" {
  description = "list of instance type"
  type        = list(string)
  default     = ["t2.nano", "t2.micro", "t2.medium", "t2.large"]

}

variable "availability_zone" {
  description = "list of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]

}

variable "enabl_primary_ipv6" {
  description = "Enable primary IPv6"
  type        = bool
  default     = false

}

variable "number_instances" {
  description = "Number of instance to lunch"
  type        = number
  default     = 1

}

variable "tags" {
  description = "Tag to apply to the instance"
  type        = map(string)
  default = {
    "Name"    = "Good"
    "env"     = "dev"
    "owner"   = "kamarafamily"
    "project" = "learning"
  }

}
