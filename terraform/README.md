# Importing existing infrastructure into terraform


## Import VPCs

```
python ./import-digitalocean-vpcs.py
```

## Import Spaces Buckets

```
python ./import-digitalocean-spaces-buckets.py
```


## Import Domains

Run for each domain

```
python ./import-digitalocean-domain-and-records.py domain1.com
python ./import-digitalocean-domain-and-records.py domain2.com
```
