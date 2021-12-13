
resource "digitalocean_record" "NS1_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns1.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "NS2_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns2.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "NS3_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "@"
  priority   = "0"
  ttl   = "1800"
  type   = "NS"
  value   = "ns3.digitalocean.com"
  weight   = "0"
}


resource "digitalocean_record" "visualcu_es_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "@"
  priority   = "0"
  ttl   = "300"
  type   = "A"
  value   = "174.138.101.139"
  weight   = "0"
}


resource "digitalocean_record" "MX1_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "@"
  priority   = "50"
  ttl   = "1800"
  type   = "MX"
  value   = "mail.visualcu.es"
  weight   = "0"
}


resource "digitalocean_record" "blog_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "blog"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "app_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "app"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "git_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "git"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "mail_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "mail"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "data_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "data"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "api_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "api"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "static_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "static"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "files_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "files"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "splash_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  name   = "splash"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}