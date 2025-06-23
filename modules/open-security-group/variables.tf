variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "open-security-group"
}

variable "ingress_cidr" {
  description = "CIDR block for ingress rules"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # BAD PRACTICE: Open to all
}

variable "ingress_port" {
  description = "Port to allow incoming traffic"
  type        = number
  default     = 22
}

