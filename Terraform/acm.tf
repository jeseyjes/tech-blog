resource "aws_acm_certificate" "acm_certificate" {
  provider          = aws.secondary
  domain_name       = "techitblog.cloudtalents.io"
  alidation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}
