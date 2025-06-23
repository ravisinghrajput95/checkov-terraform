resource "aws_db_instance" "insecure_rds" {
  allocated_storage = 20  # Minimum is 20GB
  storage_type      = "gp2"
  engine           = "mysql"
  engine_version   = "8.0"
  instance_class   = "db.t3.micro"
  username        = "admin"
  password        = "insecurepassword"
  publicly_accessible = true  # BAD PRACTICE, exposed DB
  skip_final_snapshot = true
}

