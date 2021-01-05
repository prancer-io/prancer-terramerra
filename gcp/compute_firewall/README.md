# Terramerra: Compute Firewall

Compliance code | Filename       | Code snippet problem    | Fixed code
----------------|----------------|-------------------------|-----------------------------------
PR-GCP-0002-TRF |terraform.tfvars|not sure how to allow or | disallow default firewall rule using TF
PR-GCP-0006-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0007-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0008-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0009-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0010-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0011-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0012-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0013-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0014-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0015-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0016-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0017-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0018-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0019-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "tcp"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "tcp"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
PR-GCP-0020-TRF |terraform.tfvars|fw_source_ranges = ["0.0.0.0/0"]|fw_source_ranges = ["10.0.0.0/16"]
PR-GCP-0021-TRF |terraform.tfvars|fw_allows      = [{      |fw_allows      = [{
=               |                |  protocol = "all"       |  protocol = "tcp"
=               |                |  ports    = [443]       |  ports    = [443]
=               |                |},{                      |}]
=               |                |  protocol = "all"       |
=               |                |  ports    = ["20-28000"]|
=               |                |}]                       |
