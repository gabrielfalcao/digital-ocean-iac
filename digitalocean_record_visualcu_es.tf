
resource "digitalocean_record" "blog_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  id   = "99383864"
  name   = "blog"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "app_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  id   = "99383867"
  name   = "app"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "git_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  id   = "99383869"
  name   = "git"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "mail_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  id   = "99383878"
  name   = "mail"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "data_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  id   = "102027103"
  name   = "data"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "api_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  id   = "102027104"
  name   = "api"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "static_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  id   = "102027116"
  name   = "static"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "files_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  id   = "102027136"
  name   = "files"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "splash_visualcu_es" {
  domain = digitalocean_domain.visualcu_es.name
  id   = "113034106"
  name   = "splash"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}