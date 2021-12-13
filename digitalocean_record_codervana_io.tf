
resource "digitalocean_record" "test_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  id   = "99376981"
  name   = "test"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "py_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  id   = "99376990"
  name   = "py"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "keycloak_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  id   = "99377026"
  name   = "keycloak"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}