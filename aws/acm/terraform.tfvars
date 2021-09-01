domain_name               = "String<The fully qualified domain name (FQDN), such as www.example.com, with which you want to secure an ACM certificate, Do not use asterisk (*)>"
validation_method         = "EMAIL"
subject_alternative_names = ["www.test.prancer.io"]
transparency              = "DISABLED"

tags = {
  Name        = "prancer-ec2"
  Environment = "Production"
  Project     = "Prancer"
}
