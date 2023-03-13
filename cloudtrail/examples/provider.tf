provider "aws" {
  shared_config_files      = var.shared_config_files
  shared_credentials_files = var.shared_credentials_files
  profile                  = var.aws_profile
  region                   = var.region
}