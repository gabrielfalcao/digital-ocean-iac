resource "digitalocean_record" "SOA1_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "SOA"
  value   = "1800"
  weight   = "0"
}


resource "digitalocean_record" "NS1_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns1.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "NS2_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns2.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "NS3_codervana_io" {
  domain = digitalocean_domain.codervana_io.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns3.digitalocean.com"
  weight   = "0"
}


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
