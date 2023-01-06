#!/usr/bin/env python

import os
import re
import time
import sys
import json
import subprocess
from collections import defaultdict
from pathlib import Path
from jinja2 import Environment, DictLoader, select_autoescape


def should_execute_import():
    if len(sys.argv) < 2:
        return False
    param = sys.argv[1]
    return param.lower() in ("-x", "--execute", "--import")


def load_resources(project_id="616b57bb-f1b2-438f-a77f-d704515c93e0"):
    raw = subprocess.getoutput(f"doctl projects resources list {project_id} -o json")

    items = defaultdict(list)
    for resource in json.loads(raw):
        urn = resource["urn"]
        status = resource["status"]
        if status != "ok":
            continue

        parts = urn.split(":")
        itype = parts[1]
        iid = parts[2]
        items[itype].append(iid)

    return dict(items)


if __name__ == "__main__":
    print(json.dumps(load_resources(), indent=4))
