
resource "digitalocean_record" "NS1_wavemanda_la" {
  domain = digitalocean_domain.wavemanda_la.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns1.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "NS2_wavemanda_la" {
  domain = digitalocean_domain.wavemanda_la.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns2.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "NS3_wavemanda_la" {
  domain = digitalocean_domain.wavemanda_la.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns3.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "wavemanda_la_wavemanda_la" {
  domain = digitalocean_domain.wavemanda_la.name
  name   = "@"
  priority   = "0"
  ttl   = "300"
  type   = "A"
  value   = "157.245.21.131"
  weight   = "0"
}


resource "digitalocean_record" "MX1_wavemanda_la" {
  domain = digitalocean_domain.wavemanda_la.name
  name   = "@"
  priority   = "50"
  ttl   = "1800"
  type   = "MX"
  value   = "mail.wavemanda.la"
  weight   = "0"
}