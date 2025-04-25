variable "ami_id" {
  type        = string
  description = "AMI_ID"
  default     = "ami-00050df3e7d85b599"

}

variable "instance_type" {
  type        = string
  description = "type of ec2 instance"
  default     = "t3.micro"
}

variable "availability_zone" {
  type = list(string)
  description = "Availability zones for my ec2 instance"
  default = [ "us-east-2a", "us-east-2b", "us-east-2c" ]
  
}
