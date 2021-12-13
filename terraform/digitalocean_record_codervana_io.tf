
resource "digitalocean_record" "codervana_io_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  name   = "@"
  priority   = "0"
  ttl   = "300"
  type   = "A"
  value   = "164.90.240.88"
  weight   = "0"
}


resource "digitalocean_record" "test_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  name   = "test"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "py_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  name   = "py"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "keycloak_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  name   = "keycloak"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}