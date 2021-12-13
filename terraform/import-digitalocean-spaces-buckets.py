#!/usr/bin/env python

import os



cmds = [
"terraform import digitalocean_spaces_bucket.gfalcao ams3,gfalcao",
"terraform import digitalocean_spaces_bucket.gabrielfalcao nyc3,gabrielfalcao",
"terraform import digitalocean_spaces_bucket.r131733 ams3,r131733",
"terraform import digitalocean_spaces_bucket.python-clinic nyc3,python-clinic",
]

for cmd in cmds:
    print(cmd)
    os.system(cmd)
