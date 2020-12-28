# Terramerra: ELB/ALB

Compliance code | Filename       | Code snippet problem            | Fixed code
----------------|----------------|---------------------------------|-----------------------------------
PR-AWS-0062-TRF |terraform.tfvars|policy_attribute_map = {RC4-MD5 = "true"}|policy_attribute_map = {RC4-MD5 = "false"}
PR-AWS-0063-TRF |terraform.tfvars|policy_attribute_map = {Protocol-SSLv3 = "true"}|policy_attribute_map = {Protocol-SSLv3 = "false"}
PR-AWS-0064-TRF |terraform.tfvars|logging_enabled = false          |logging_enabled = true
PR-AWS-0065-TRF |terraform.tfvars|connection_draining = false      |connection_draining = true
PR-AWS-0066-TRF |terraform.tfvars|cross_zone_load_balancing = false|cross_zone_load_balancing = true
PR-AWS-0067-TRF |terraform.tfvars|security_groups = []             |security_groups = [sg1, sg2]
PR-AWS-0068-TRF |terraform.tfvars|security_groups = []             |security_groups = [sg1, sg2]
PR-AWS-0069-TRF |terraform.tfvars|instances = []                   |instances = ["arn:..."]
PR-AWS-0072-TRF |terraform.tfvars|access_logs = {}                 |access_logs = {enabled = "true"}
PR-AWS-0073-TRF |terraform.tfvars|listener1{ssl_certificate_id = null}|listener1{ssl_certificate_id = "arn:aws:..."}
PR-AWS-0006-TRF |terraform.tfvars|listener1{lb_protocol = "http"}|listener1{lb_protocol = "https"}
