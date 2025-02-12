variable "bucket_name" {
  description = "The name of the existing S3 bucket"
  type        = string
  default     = "techitblog2-dev" # Replace with your actual bucket name
}

variable "cloudfront_id" {
  description = "The ID of the existing CloudFront distribution"
  type        = string
  default     = "E30I0CZEU0B9O1" # Replace with your actual CloudFront ID
}