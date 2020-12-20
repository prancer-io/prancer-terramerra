resource "aws_acm_certificate" "acm" {
  domain_name               = var.domain_name
  validation_method         = var.validation_method
  subject_alternative_names = var.subject_alternative_names
  tags                      = var.tags

  options {
    certificate_transparency_logging_preference = var.transparency
  }

  lifecycle {
    create_before_destroy = true
  }
}
