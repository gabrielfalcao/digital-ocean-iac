YAML		:= /tmp/kustomize-blog.yaml
K8S_NAMESPACE	:= cognodes

clean:
	rm -f $(YAML)

main: clean deploy

$(YAML): clean
	kustomize build . > $(YAML)

namespace:
	kubectl get ns $(K8S_NAMESPACE) || kubectl create ns $(K8S_NAMESPACE)

deploy:|  $(YAML) namespace
	kubectl apply -f $(YAML)

undeploy:|  $(YAML) namespace
	kubectl delete -f $(YAML)

.DEFAULT_GOAL	:= deploy

.PHONY: main namespace deploy
