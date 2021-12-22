#!/usr/bin/env python

"""USAGE:

make sure that dotcl is installed and authenticated
export digital ocean token to env var: TF_VAR_do_token

run:

python digitalocean_record.py domain.com

Will generate a file digitalocean_record_domain_com.tf containing all
records in digital ocean and print the terraform-import commands.

run:

python digitalocean_record.py domain.com --execute

to automatically import everything into terraform
"""
import os
import re
import time
import sys
import json
import subprocess
from collections import Counter
from pathlib import Path
from jinja2 import Environment, DictLoader, select_autoescape

from resources import load_resources

path = Path(__file__).parent

loader = DictLoader(
    {
        "record": """
resource "digitalocean_record" "{{ name }}_{{ parent }}" {
  domain = digitalocean_domain.{{ parent }}.name
  name   = "{{ value }}"
  priority   = "{{ priority }}"
  ttl   = "{{ ttl }}"
  type   = "{{ type }}"
  value   = "{{ data }}"
  weight   = "{{ weight }}"
}
""",
        "domain": """
resource "digitalocean_domain" "{{ parent }}" {
  name   = "{{ domain }}"
}
""",
    }
)

env = Environment(loader=loader, autoescape=select_autoescape())


def parse_domain():
    if len(sys.argv) < 2:
        print(f"missing domain")
        raise SystemExit(1)

    domain = sys.argv[1]
    return domain


def should_execute_import():
    if len(sys.argv) < 3:
        return False
    param = sys.argv[2]
    return param.lower() in ("-x", "--execute", "--import")


def get_records_filepath(domain):
    return path.joinpath(f"records_{domain}.json")


def load_records(domain):
    parent = domain.replace(".", "_")

    path = get_records_filepath(domain)
    if not path.exists():
        raw = subprocess.getoutput(
            f"doctl compute domain records list {domain} -o json"
        )
        path.open("w").write(raw)
    else:
        raw = path.open().read()

    records = sorted(json.loads(raw), key=lambda x: int(x['id']))
    type_counter = Counter()

    for r in records:
        value = name = r.get('name')
        r['value'] = value
        data = r.get('data')
        type_name = r.get('type')
        type_counter[type_name] +=1
        index = type_counter[type_name]
        if type_name in ('SOA', ):
            continue
        if name == '@':
            if type_name == 'A':
                if index > 1:
                    continue

                r['name'] = parent
            else:
                r['name'] = f'{type_name}{index}'

        if type_name in ('NS', 'MX'):
            r['value'] = f'{value}.'
            continue

        yield r


def terraform_import(records, parent, domain, execute=False):
    cmd = f"terraform import digitalocean_domain.{parent} {domain}"
    print(cmd)
    if execute:
        if os.system(cmd) != 0:
            time.sleep(1)


    for record in records:
        id = record["id"]
        name = record["name"]
        full_name = f"{name}_{parent}"
        cmd = f"terraform import digitalocean_record.{full_name} {domain},{id}"
        print(cmd)
        if execute:
            if os.system(cmd) != 0:
                time.sleep(1)


def terraform_generate_records(records, parent):
    template = env.get_template("record")
    contents = "\n\n".join(
        [template.render(**record, parent=parent) for record in records]
    )
    filename = f"digitalocean_record_{parent}.tf"
    with open(filename, "w") as fd:
        fd.write(contents)
    print(f"wrote {filename}")


def terraform_generate_domain(domain, parent):
    template = env.get_template("domain")
    filename = f"digitalocean_domain_{parent}.tf"
    contents = template.render(domain=domain, parent=parent)
    with open(filename, "w") as fd:
        fd.write(contents)
    print(f"wrote {filename}")


def import_domain(domain):
    execute = should_execute_import()

    parent = domain.replace(".", "_")

    terraform_generate_domain(domain, parent)
    records = list(load_records(domain))
    name_records = list(
        filter(lambda record: not re.search(r"[^a-z-]", record["name"]), records)
    )

    terraform_generate_records(records, parent)
    terraform_import(records, parent, domain, execute)


def main():
    resources = load_records()
    for domain in resources['domain']:
        import_domain(domain)

if __name__ == "__main__":
    main()
