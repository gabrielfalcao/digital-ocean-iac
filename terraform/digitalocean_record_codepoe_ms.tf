
resource "digitalocean_record" "codepoe_ms_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "@"
  priority   = "0"
  ttl   = "300"
  type   = "A"
  value   = "164.90.240.88"
  weight   = "0"
}


resource "digitalocean_record" "test_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "test"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "py_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "py"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "vault_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "vault"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "app_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "app"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "ssh_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "ssh"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "git_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "git"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "blog_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "blog"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "python_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "python"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "crypto_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "crypto"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "files_codepoe_ms" {
  domain = digitalocean_domain.codepoe_ms.name
  name   = "files"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}