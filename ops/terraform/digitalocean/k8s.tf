resource "digitalocean_kubernetes_cluster" "trivia_production" {
  name    = "OpenTriviaDeluxe Production Kubernetes Cluster"
  region  = var.region
  version = "1.20.2-do.0"

  node_pool {
    name       = "autoscale-worker-pool"
    size       = "s-1vcpu-1gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 1
  }
}