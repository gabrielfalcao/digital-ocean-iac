
resource "digitalocean_record" "cognod_es_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "@"
  priority   = "0"
  ttl   = "300"
  type   = "A"
  value   = "174.138.101.139"
  weight   = "0"
}


resource "digitalocean_record" "app_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "app"
  priority   = "0"
  ttl   = "600"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "api_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "api"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "data_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "data"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "mail_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "mail"
  priority   = "0"
  ttl   = "600"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}