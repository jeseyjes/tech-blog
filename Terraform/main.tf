# Define the AWS provider
provider "aws" {
  region = "eu-west-2"
}

# Reference the existing S3 bucket using a data source
data "aws_s3_bucket" "existing_bucket" {
  bucket = "techitblog2-dev" # Replace with your actual bucket name
}

# Reference the existing CloudFront distribution using a data source
data "aws_cloudfront_distribution" "existing_distribution" {
  id = "E30I0CZEU0B9O1" # Replace with your actual CloudFront distribution ID
}

# Output the details of the existing resources for verification
output "s3_bucket" {
  description = "The name of the existing S3 bucket"
  value       = data.aws_s3_bucket.existing_bucket.bucket
}

output "cloudFront_ID" {
  description = "The ID of the existing CloudFront distribution"
  value       = data.aws_cloudfront_distribution.existing_distribution.id
}

output "cloudFront_domain_name" {
  description = "The domain name of the existing CloudFront distribution"
  value       = data.aws_cloudfront_distribution.existing_distribution.domain_name
}

# Configure Terraform Cloud
terraform {
  cloud {
    organization = "Techitblog"

    workspaces {
      name = "tech-blog"
    }
  }
}