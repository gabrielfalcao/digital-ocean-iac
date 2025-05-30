terraform {
  # backend "s3" {
  #   skip_credentials_validation = true
  #   skip_metadata_api_check     = true
  #   endpoint                    = "https://ams3.digitaloceanspaces.com"
  #   region                      = "us-east-1" // needed
  #   bucket                      = "gfalcao"   // name of your space
  #   key                         = "infrastructure/digital-ocean.tfstate"
  # }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    kubectl = {
      # https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs
      source  = "gavinbunney/kubectl"
      version = "1.13.0"
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

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "do-fra1-falcaoit-prod"
}


provider "kubectl" {
  # Same config as in kubernetes provider
}
provider "helm" {
  kubernetes {
    # Same config as in kubernetes provider
  }
}
