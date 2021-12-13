
resource "digitalocean_record" "NS1_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns1.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "NS2_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns2.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "NS3_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns3.digitalocean.com"
  weight   = "0"
}


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


resource "digitalocean_record" "MX1_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "@"
  priority   = "10"
  ttl   = "600"
  type   = "MX"
  value   = "mail.cognod.es"
  weight   = "0"
}


resource "digitalocean_record" "MX2_cognod_es" {
  domain = digitalocean_domain.cognod_es.name
  name   = "@"
  priority   = "10"
  ttl   = "300"
  type   = "MX"
  value   = "@"
  weight   = "0"
}