
resource "digitalocean_record" "partner_codes_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "@"
  priority   = "0"
  ttl   = "600"
  type   = "A"
  value   = "157.245.21.131"
  weight   = "0"
}


resource "digitalocean_record" "www_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "www"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "api_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "api"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "xmpp_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "xmpp"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "stun_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "stun"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "mail_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "mail"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "ci_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "ci"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "docker_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "docker"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "python_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "python"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "js_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "js"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "npm_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "npm"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "py_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "py"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "docs_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "docs"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "files_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "files"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "s_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "s"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "v_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "v"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "share_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "share"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "static_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "static"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "turn_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "turn"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "lambda_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "lambda"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "func_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "func"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "dns_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "dns"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "cdn_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "cdn"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "crypto_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "crypto"
  priority   = "0"
  ttl   = "43200"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "admin_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "admin"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "git_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "git"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "blog_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "blog"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "ipfs_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "ipfs"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "shell_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "shell"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "vpn_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "vpn"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "tunnel_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "tunnel"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "gabriel_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "gabriel"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "jj_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "jj"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "pypi_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "pypi"
  priority   = "0"
  ttl   = "300"
  type   = "CNAME"
  value   = "@"
  weight   = "0"
}


resource "digitalocean_record" "m3_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "m3"
  priority   = "0"
  ttl   = "600"
  type   = "A"
  value   = "165.22.88.19"
  weight   = "0"
}


resource "digitalocean_record" "m8_partner_codes" {
  domain = digitalocean_domain.partner_codes.name
  name   = "m8"
  priority   = "0"
  ttl   = "300"
  type   = "A"
  value   = "165.22.17.168"
  weight   = "0"
}