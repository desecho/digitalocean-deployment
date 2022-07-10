terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.21.0"
    }
  }

  required_version = ">= 0.14.0"
}
