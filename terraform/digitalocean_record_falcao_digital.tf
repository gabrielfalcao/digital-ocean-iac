
resource "digitalocean_record" "blog_falcao_digital" {
  domain = digitalocean_domain.falcao_digital.name
  name   = "blog"
  priority   = "0"
  ttl   = "600"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "api_falcao_digital" {
  domain = digitalocean_domain.falcao_digital.name
  name   = "api"
  priority   = "0"
  ttl   = "600"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "app_falcao_digital" {
  domain = digitalocean_domain.falcao_digital.name
  name   = "app"
  priority   = "0"
  ttl   = "600"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "falcao_digital_falcao_digital" {
  domain = digitalocean_domain.falcao_digital.name
  name   = "@"
  priority   = "0"
  ttl   = "600"
  type   = "A"
  value   = "165.22.26.158"
  weight   = "0"
}


resource "digitalocean_record" "gabriel_falcao_digital" {
  domain = digitalocean_domain.falcao_digital.name
  name   = "gabriel"
  priority   = "0"
  ttl   = "600"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}