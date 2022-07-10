provider "digitalocean" {}

resource "digitalocean_kubernetes_cluster" "scrap_k8s_cluster" {
  name          = "scrap"
  region        = "tor1"
  version       = "1.22.11-do.0"
  auto_upgrade  = true
  surge_upgrade = true

  node_pool {
    name       = "worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 2
  }
}
