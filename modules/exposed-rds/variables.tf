variable "db_identifier" {
  description = "Unique identifier for the RDS instance"
  type        = string
  default     = "vulnerable-rds"
}

variable "db_engine" {
  description = "Database engine"
  type        = string
  default     = "mysql"
}

variable "db_username" {
  description = "Username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  default     = "SuperWeakP@ssword"  # BAD PRACTICE
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  type        = bool
  default     = true  # BAD PRACTICE
}

