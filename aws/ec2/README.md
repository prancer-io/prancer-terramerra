# Terramerra: EC2

Compliance code | Filename       | Code snippet problem         | Fixed code
----------------|----------------|------------------------------|---------------------------------
PR-AWS-0041-TRF |terraform.tfvars|encrypted = false             |encrypted = true
PR-AWS-0042-TRF |terraform.tfvars|iam_instance_profile = null   |iam_instance_profile = "prancer_ec2"
