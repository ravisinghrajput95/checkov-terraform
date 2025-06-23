terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.87.0"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "us-east-1"
}

module "insecure_s3" {
  source = "./modules/insecure-s3"
}

module "open_sg" {
  source = "./modules/open-security-group"
}

module "weak_iam" {
  source = "./modules/weak-iam-role"
}

module "insecure_ec2" {
  source = "./modules/insecure-ec2"
}

module "exposed_rds" {
  source = "./modules/exposed-rds"
}