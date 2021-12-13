terraform {
  backend "s3" {
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    endpoint                    = "https://ams3.digitaloceanspaces.com"
    region                      = "us-east-1" // needed
    bucket                      = "gfalcao"   // name of your space
    key                         = "infrastructure/digital-ocean.tfstate"
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}


variable "do_token" {}
variable "do_spaces_access_id" {}
variable "do_spaces_secret_key" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token             = var.do_token
  spaces_access_id  = var.do_spaces_access_id
  spaces_secret_key = var.do_spaces_secret_key
}
