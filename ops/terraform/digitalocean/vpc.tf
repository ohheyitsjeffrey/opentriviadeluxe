resource "digitalocean_vpc" "trivia_production" {
  name     = "opentriviadeluxe-production-vpc"
  region   = var.region
  ip_range = "10.10.10.0/24"
}