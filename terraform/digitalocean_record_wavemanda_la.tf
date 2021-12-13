
resource "digitalocean_record" "wavemanda_la_wavemanda_la" {
  domain = digitalocean_domain.wavemanda_la.name
  name   = "@"
  priority   = "0"
  ttl   = "300"
  type   = "A"
  value   = "157.245.21.131"
  weight   = "0"
}