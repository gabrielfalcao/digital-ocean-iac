resource "digitalocean_loadbalancer" "k8s_cognodes" {
  name   = "loadbalancer-1"
  region = digitalocean_kubernetes_cluster.cognodes.region

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  forwarding_rule {
    entry_port     = 443
    entry_protocol = "tcp"

    target_port     = 443
    target_protocol = "tcp"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  #https://stackoverflow.com/questions/54617143/pre-deploying-kubernetes-loadbalancer-with-terraform-on-digitalocean
  droplet_ids = digitalocean_kubernetes_cluster.cognodes.node_pool.0.nodes[*].droplet_id
}
