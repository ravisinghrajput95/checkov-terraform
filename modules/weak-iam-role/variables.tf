variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "weak-admin-role"
}

variable "policy_name" {
  description = "IAM policy name"
  type        = string
  default     = "admin-policy"
}

