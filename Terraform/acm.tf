resource "aws_acm_certificate" "acm_certificate" {
  provider          = aws.secondary
  domain_name       = "jeseyjess.cloudtalents.io"
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 333b32d60b5061a6b11ce625937bb74fb7791104
