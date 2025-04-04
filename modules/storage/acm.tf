resource "aws_acm_certificate" "cert" {
  domain_name       = var.custom_domain_for_cloudfront
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}