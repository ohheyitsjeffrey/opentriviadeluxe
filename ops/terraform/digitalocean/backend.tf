terraform {
  backend "s3" {
    endpoint                    = "sfo3.digitaloceanspaces.com"
    key                         = "terraform.tfstate"
    bucket                      = "opentriviadeluxe-terraform"
    region                      = "us-west-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}