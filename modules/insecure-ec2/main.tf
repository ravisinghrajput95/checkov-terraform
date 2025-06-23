resource "aws_instance" "vulnerable_ec2" {
  ami           = "ami-04b4f1a9cf54c11d0"  # Replace with a valid AMI ID
  instance_type = "t2.micro"
  
  user_data = <<EOF
#!/bin/bash
echo 'password' | passwd --stdin root
EOF
  # Hardcoded root password, BAD PRACTICE
}

