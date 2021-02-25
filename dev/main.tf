variable "github_oauth_token" {}

module "spinnaker" {
  source = "github.com/balutbomber/terraform-spinnaker-module.git?ref=0.0.3"
  name = "spinnaker"
  region = "us-east-1"
  stage = "dev"
  github_configuration = {
    Owner       = "balutbomber"
    Repo        = "terraform-spinnaker-module"
    Branch      = "master"
    OAuthToken = var.github_oauth_token
  }
}
