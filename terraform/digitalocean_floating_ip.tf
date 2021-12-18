resource "digitalocean_floating_ip" "r131733" {
  droplet_id = digitalocean_droplet.r131733.id
  region     = digitalocean_droplet.r131733.region
}

resource "digitalocean_floating_ip" "falcaoit" {
  droplet_id = digitalocean_droplet.falcaoit.id
  region     = digitalocean_droplet.falcaoit.region
}
