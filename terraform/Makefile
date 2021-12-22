PLAN_TARGET	:= deploy.tfplan

$(PLAN_TARGET):
	terraform plan -out $@

cls:
	@echo -e "\033[H\033[2J"

clean: cls
	rm -f $(PLAN_TARGET)
	rm -f *.json

import: clean
	-terraform import digitalocean_kubernetes_cluster.cognodes a3e1e65a-5166-466a-8327-c90b3f6e426a
	-python import-digitalocean-vpcs.py
	-python import-digitalocean-droplets.py
	-python import-digitalocean-spaces-buckets.py
	-python import-digitalocean-domain-and-records.py


apply: $(PLAN_TARGET)
	terraform apply $(PLAN_TARGET)

deploy: clean apply

.PHONY: clean import apply deploy
