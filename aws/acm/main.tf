module "acm" {
  source  = "../modules/acm"
  domain_name               = var.domain_name
  validation_method         = var.validation_method
  subject_alternative_names = var.subject_alternative_names
  tags                      = var.tags
}
