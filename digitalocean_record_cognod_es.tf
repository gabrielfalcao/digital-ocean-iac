
resource "digitalocean_record" "app_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  id   = "102013599"
  name   = "app"
  priority   = "0"
  ttl   = "600"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "api_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  id   = "102013602"
  name   = "api"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "data_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  id   = "102024839"
  name   = "data"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "mail_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  id   = "102024920"
  name   = "mail"
  priority   = "0"
  ttl   = "600"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}