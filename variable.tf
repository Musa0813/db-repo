variable "ami" {
    description = "AMI id for my instance"
    type = string
    default = "ami-0c55b159cbfafe1f0"

  
}

variable "instance_type" {
    description = "Instance type for aws resouces"
    type = string
    default = "t2.micro"
  
}

variable "tags" {
    description = "Tags to apply to my resources"
    type = map(string)
    default = {
      Name = "Qt"
    }
  
}