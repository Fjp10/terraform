variable "region" {
  description = "The AWS region in which to create the EC2 instance"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "The type of EC2 instance to create"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name to give the EC2 instance"
  default     = "eg-instance"
}

variable "ami" {
  description = "The name to give the EC2 instance"
  default     = ""
}
