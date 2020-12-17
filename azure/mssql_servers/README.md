# Terramerra: MSSQL Server

Compliance code | Filename       | Code snippet problem              | Fixed code
----------------|----------------|-----------------------------------|---------------------------------
PR-AZR-0003-TRF |terraform.tfvars|enable_sqldb_auditing = false      |enable_sqldb_auditing = true
PR-AZR-0053-TRF |terraform.tfvars|sqldb_audit_retention = 30         |sqldb_audit_retention = 120
PR-AZR-0059-TRF |terraform.tfvars|sql_audit_retention = 30           |sql_audit_retention = 120
PR-AZR-0082-TRF |terraform.tfvars|sql_fw_start_ip = "0.0.0.0"        |sql_fw_start_ip = "10.0.2.0"
                |                |sql_fw_end_ip = "0.0.0.0"          |sql_fw_end_ip = "10.0.255.255"
PR-AZR-0054-TRF |terraform.tfvars|sql_sec_policy_state = "Disabled"  |sql_sec_policy_state = "Enabled"
                |                |sql_sec_policy_retention = 30      |sql_sec_policy_retention = 120
PR-AZR-0055-TRF |terraform.tfvars|sql_sec_policy_state = "Disabled"  |sql_sec_policy_state = "Enabled"
                |                |email_account_admins = false       |email_account_admins = true
                |                |email_addresses = []               |email_addresses = ["soc@my.net"]
PR-AZR-0061-TRF |terraform.tfvars|sql_sec_policy_state = "Disabled"  |sql_sec_policy_state = "Enabled"
                |                |disabled_alerts = ["Unsafe_Action"]|disabled_alerts = []
PR-AZR-0097-TRF |terraform.tfvars|sql_sec_policy_state = "Disabled"  |sql_sec_policy_state = "Enabled"
                |                |disabled_alerts = ["Unsafe_Action"]|disabled_alerts = []
PR-AZR-0088-TRF |terraform.tfvars|sql_sec_policy_state = "Disabled"  |sql_sec_policy_state = "Enabled"
                |                |email_account_admins = false       |email_account_admins = true
PR-AZR-0096-TRF |terraform.tfvars|sql_sec_policy_state = "Disabled"  |sql_sec_policy_state = "Enabled"
PR-AZR-0056-TRF |terraform.tfvars|sql_vuln_scan_enabled = false      |sql_vuln_scan_enabled = true
                |                |sql_vuln_scan_admin_email = false  |sql_vuln_scan_admin_email = true
                |                |sql_vuln_scan_emails = []          |sql_vuln_scan_emails = ["a@b.io"]
PR-AZR-0057-TRF |terraform.tfvars|sql_vuln_scan_enabled = false      |sql_vuln_scan_enabled = true
                |                |sql_vuln_scan_admin_email = false  |sql_vuln_scan_admin_email = true
PR-AZR-0058-TRF |terraform.tfvars|sql_vuln_scan_enabled = false      |sql_vuln_scan_enabled = true
