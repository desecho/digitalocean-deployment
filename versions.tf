terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.6.0"
    }
  }

  required_version = ">= 0.14.0"
}
