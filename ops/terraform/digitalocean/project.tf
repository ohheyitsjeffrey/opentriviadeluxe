resource "digitalocean_project" "trivia_production" {
  name        = "OpenTriviaDeluxe Production"
  description = "OpenTriviaDeluxe Production"
  purpose     = "Web Application"
  environment = "Development"
  resources = [
    digitalocean_kubernetes_cluster.trivia_production.urn,
    digitalocean_database_cluster.trivia_production.urn
  ]
}