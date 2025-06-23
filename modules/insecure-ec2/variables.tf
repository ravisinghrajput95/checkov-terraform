variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"  # Public Amazon Linux AMI
}

variable "key_name" {
  description = "SSH key name"
  type        = string
  default     = "vulnerable-key"
}

