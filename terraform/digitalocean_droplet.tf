resource "digitalocean_droplet" "r131733" {
  image  = "17.04 x64"
  name   = "r131733"
  region = "Frankfurt 1"
  size   = "512mb"
}

resource "digitalocean_droplet" "falcaoit" {
  image  = "19.04 x64"
  name   = "falcaoit"
  region = "Frankfurt 1"
  size   = "s-1vcpu-1gb"
}

resource "digitalocean_droplet" "procurador2021" {
  image  = "20.04 (LTS) x64"
  name   = "procurador2021"
  region = "New York 3"
  size   = "s-1vcpu-1gb"
}