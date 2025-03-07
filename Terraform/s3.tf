# Reference the existing S3 bucket
data "aws_s3_bucket" "existing_bucket" {
  bucket = var.bucket_name  # Use the same variable for flexibility
}

# Output the bucket name (for verification)
output "existing_s3_bucket_name" {
  description = "The name of the existing S3 bucket"
  value       = data.aws_s3_bucket.existing_bucket.bucket
}
