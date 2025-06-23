# Vulnerable Terraform Modules

This repository contains intentionally vulnerable Terraform modules for testing **Checkov**.

### ⚠️ WARNING
**DO NOT DEPLOY IN PRODUCTION!**  
These configurations contain security vulnerabilities such as:
- Hardcoded credentials
- Publicly accessible services (S3, EC2, RDS)
- Overly permissive IAM policies
- Unrestricted security groups

### 🛠️ Setup
```sh
terraform init
terraform apply -auto-approve# checkov-terraform
