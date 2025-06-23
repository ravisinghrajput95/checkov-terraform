output "s3_bucket_name" {
  value = module.insecure_s3.bucket_name
}

output "security_group_id" {
  value = module.open_sg.security_group_id
}

output "iam_role_name" {
  value = module.weak_iam.role_name
}

output "ec2_instance_id" {
  value = module.insecure_ec2.instance_id
}

output "rds_instance_id" {
  value = module.exposed_rds.rds_instance_id
}