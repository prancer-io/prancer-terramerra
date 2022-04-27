resource "aws_load_balancer_policy" "wu-tang-ssl-tls-1-1" {
  load_balancer_name = var.elb_name
  policy_name        = "wu-tang-ssl"
  policy_type_name   = "SSLNegotiationPolicyType"

  policy_attribute {
    name  = "Reference-Security-Policy"
    value = "ELBSecurityPolicy-TLS-1-1-2017-01"
  }
  policy_attribute {
    name  = "routing.http.drop_invalid_header_fields.enabled"
    value = "true"
  }
}