resource "aws_security_group" "open_sg" {
  name        = "open-security-group"
  description = "Allows unrestricted access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open to all, BAD PRACTICE
  }
}

