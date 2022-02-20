resource "digitalocean_database_cluster" "trivia_production" {
  name       = "opentriviadeluxe-production-database"
  engine     = "pg"
  version    = "11"
  size       = "db-s-1vcpu-1gb"
  region     = var.region
  node_count = 1
  private_network_uuid = digitalocean_vpc.trivia_production.id
}