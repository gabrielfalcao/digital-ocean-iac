#!/usr/bin/env python

import os
import re
import time
import sys
import json
import subprocess
from collections import Counter
from pathlib import Path
from jinja2 import Environment, DictLoader, select_autoescape

path = Path(__file__).parent

loader = DictLoader(
    {
        "droplet": """
resource "digitalocean_droplet" "{{ resource_name }}" {
  image  = "{{ image.id }}"
  name   = "{{ name }}"
  monitoring   = {{ monitoring }}
  region = "{{ region.slug }}"
  size   = "{{ size.slug }}"
}
""".strip(),
    }
)

env = Environment(loader=loader, autoescape=select_autoescape())


def should_execute_import():
    if len(sys.argv) < 2:
        return False
    param = sys.argv[1]
    return param.lower() in ("-x", "--execute", "--import")


def get_droplets_filepath():
    return path.joinpath(f"droplets.json")


def load_droplets():
    path = get_droplets_filepath()
    if not path.exists():
        raw = subprocess.getoutput(
            f"doctl compute droplet list -o json"
        )
        path.open("w").write(raw)
    else:
        raw = path.open().read()

    items = []
    for droplet in json.loads(raw):
        id = droplet["id"]
        name = droplet["name"]
        features = droplet.get("features", [])
        image_name = droplet.get("image", {}).get('name', '')
        if name.startswith("pool_") or 'kube' in image_name:
            # ignore kubernetes-managed nodes
            continue

        resource_name = name.replace('-', '_')
        droplet['resource_name'] = resource_name
        droplet['monitoring'] = json.dumps('monitoring' in features)
        items.append(droplet)

    return sorted(items, key=lambda x: x['id'])


def terraform_import(droplets, execute=False):
    for droplet in droplets:
        cmd = "terraform import digitalocean_droplet.{name} {id}".format(**droplet)
        print(cmd)
        if execute:
            os.system("terraform state rm digitalocean_droplet.{name}".format(**droplet))
            if os.system(cmd) != 0:
                time.sleep(1)


def terraform_generate_droplets(droplets):
    template = env.get_template("droplet")
    contents = "\n\n".join(
        [template.render(**droplet) for droplet in droplets]
    )
    filename = f"digitalocean_droplet.tf"
    with open(filename, "w") as fd:
        fd.write(contents)
    print(f"wrote {filename}")




def main():
    execute = should_execute_import()

    droplets = load_droplets()
    terraform_generate_droplets(droplets)
    terraform_import(droplets, execute)


if __name__ == "__main__":
    main()
