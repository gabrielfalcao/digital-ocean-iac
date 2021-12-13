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


# terraform import digitalocean_spaces_bucket.gfalcao ams3,gfalcao
# terraform import digitalocean_spaces_bucket.gabrielfalcao nyc3,gabrielfalcao
# terraform import digitalocean_spaces_bucket.r131733 ams3,r131733
# terraform import digitalocean_spaces_bucket.python-clinic nyc3,python-clinic
