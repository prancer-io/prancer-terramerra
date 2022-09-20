resource "aws_amplify_app" "myAmplify" {
  name = "myAmplify"

  enable_basic_auth      = true
  basic_auth_credentials = base64encode("username1:password1")
  auto_branch_creation_config {
    enable_auto_build = true
    enable_pull_request_preview = true
  }
}
