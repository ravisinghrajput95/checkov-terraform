resource "aws_s3_bucket" "vulnerable_bucket" {
  bucket        = var.bucket_name
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "disable_restrictions" {
  bucket = aws_s3_bucket.vulnerable_bucket.id

  block_public_acls       = false  # Allows ACLs, but not needed
  block_public_policy     = false  # Allows public bucket policy
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "public_read_policy" {
  bucket = aws_s3_bucket.vulnerable_bucket.id
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${var.bucket_name}/*"
    }
  ]
}
POLICY
}

