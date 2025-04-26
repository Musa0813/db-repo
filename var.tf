variable "ami_id" {
  type        = string
  description = "The AMI ID for the EC2 instance"
  default     = "ami-00050df3e7d85b599"
}

variable "instance_type" {
  type        = string
  description = "The EC2 instance type"
  default     = "t3.micro"
}

variable "availability_zone" {
  type        = list(string)
  description = "List of availability zones"
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}