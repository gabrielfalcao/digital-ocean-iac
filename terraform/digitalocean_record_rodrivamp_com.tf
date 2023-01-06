
resource "digitalocean_record" "rodrivamp_com_rodrivamp_com" {
  domain = digitalocean_domain.rodrivamp_com.name
  name   = "@"
  priority   = "0"
  ttl   = "300"
  type   = "A"
  value   = "174.138.101.139"
  weight   = "0"
}


resource "digitalocean_record" "admin_rodrivamp_com" {
  domain = digitalocean_domain.rodrivamp_com.name
  name   = "admin"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "contato_rodrivamp_com" {
  domain = digitalocean_domain.rodrivamp_com.name
  name   = "contato"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}