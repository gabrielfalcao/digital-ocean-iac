KEY		:= ~/.iac.yaml
ENV_FILE	:= .env

encrypt decrypt:
	aes-256-cbc $@ --try -k $(KEY) -i $(ENV_FILE) -o $(ENV_FILE)

check:
	aes-256-cbc check -k $(KEY) -i $(ENV_FILE)

.PHONY: encrypt decrypt
