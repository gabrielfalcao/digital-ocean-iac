
resource "digitalocean_record" "mail_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "22393025"
  name   = "mail"
  priority   = "15"
  ttl   = "600"
  type   = "MX"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "test_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383443"
  name   = "test"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "py_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383447"
  name   = "py"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "vault_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383465"
  name   = "vault"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "app_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383521"
  name   = "app"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "ssh_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383551"
  name   = "ssh"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "git_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383645"
  name   = "git"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "blog_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383664"
  name   = "blog"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "python_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383681"
  name   = "python"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "crypto_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383745"
  name   = "crypto"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "files_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  id   = "99383758"
  name   = "files"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}