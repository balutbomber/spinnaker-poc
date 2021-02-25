variable "github_oauth_token" {}

module "spinnaker" {
  source = "github.com/balutbomber/terraform-spinnaker-module.git?ref=0.0.8"
  name = "spinnaker"
  region = "us-east-1"
  stage = "dev"
  github_configuration = {
    Owner       = "balutbomber"
    Repo        = "spinnaker-poc"
    Branch      = "master"
    OAuthToken = var.github_oauth_token
  }
}
