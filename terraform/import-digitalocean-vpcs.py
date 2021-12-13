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
        "vpc": """
resource "digitalocean_vpc" "{{ resource_name }}" {
  name     = "{{ name }}"
  region   = "{{ region }}"
  ip_range = "{{ ip_range }}"
  # id       = "{{ id }}"
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


def get_vpcs_filepath():
    return path.joinpath(f"vpcs.json")


def load_vpcs():
    path = get_vpcs_filepath()
    if not path.exists():
        raw = subprocess.getoutput(
            f"doctl vpcs list -o json"
        )
        path.open("w").write(raw)
    else:
        raw = path.open().read()

    items = []
    for vpc in json.loads(raw):
        id = vpc["id"]
        name = vpc["name"]
        resource_name = name.replace('-', '_')
        vpc['resource_name'] = resource_name
        items.append(vpc)

    return sorted(items, key=lambda x: x['id'])


def terraform_import(vpcs, execute=False):
    for vpc in vpcs:
        cmd = "terraform import digitalocean_vpc.{resource_name} {id}".format(**vpc)
        print(cmd)
        if execute:
            if os.system(cmd) != 0:
                time.sleep(1)


def terraform_generate_vpcs(vpcs):
    template = env.get_template("vpc")
    contents = "\n\n".join(
        [template.render(**vpc) for vpc in vpcs]
    )
    filename = f"digitalocean_vpc.tf"
    with open(filename, "w") as fd:
        fd.write(contents)
    print(f"wrote {filename}")




def main():
    execute = should_execute_import()

    vpcs = load_vpcs()
    terraform_generate_vpcs(vpcs)
    terraform_import(vpcs, execute)


if __name__ == "__main__":
    main()
