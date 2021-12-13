resource "digitalocean_spaces_bucket" "gfalcao" {
  name   = "gfalcao"
  region = "ams3"
}

resource "digitalocean_spaces_bucket" "gabrielfalcao" {
  name   = "gabrielfalcao"
  region = "nyc3"
}

resource "digitalocean_spaces_bucket" "r131733" {
  name   = "r131733"
  region = "ams3"
}

resource "digitalocean_spaces_bucket" "python-clinic" {
  name   = "python-clinic"
  region = "nyc3"
}
