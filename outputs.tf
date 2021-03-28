output "cluster_id" {
  value       = digitalocean_kubernetes_cluster.scrap_k8s_cluster.id
  description = "Cluster ID"
}

output "ip" {
  value       = digitalocean_kubernetes_cluster.scrap_k8s_cluster.ipv4_address
  description = "IP address"
}

output "kubeconfig" {
  value       = digitalocean_kubernetes_cluster.scrap_k8s_cluster.kube_config[0].raw_config
  description = "Kubeconfig file"
}
