output "bucket_name" {
  description = "The name of the vulnerable S3 bucket"
  value       = aws_s3_bucket.vulnerable_bucket.bucket
}

output "bucket_arn" {
  description = "The ARN of the vulnerable S3 bucket"
  value       = aws_s3_bucket.vulnerable_bucket.arn
}

