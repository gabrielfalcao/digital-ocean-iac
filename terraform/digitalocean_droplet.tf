resource "digitalocean_droplet" "r131733" {
  image  = "26446785"
  name   = "r131733"
  monitoring   = true
  region = "fra1"
  size   = "512mb"
}

resource "digitalocean_droplet" "falcaoit" {
  image  = "46095840"
  name   = "falcaoit"
  monitoring   = false
  region = "fra1"
  size   = "s-1vcpu-1gb"
}

resource "digitalocean_droplet" "procurador2021" {
  image  = "72067660"
  name   = "procurador2021"
  monitoring   = false
  region = "nyc3"
  size   = "s-1vcpu-1gb"
}