resource "kubectl_manifest" "cert_cluster_issuer_staging" {
  # v1.1.0 copied from https://kubernetes.github.io/ingress-nginx/deploy/#digital-ocean on Dec 13 2021
  # https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.0/deploy/static/provider/do/deploy.yaml
  # yaml_body = file("kubernetes_ingress_nginx.yaml")

    yaml_body = <<YAML
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-staging
spec:
  acme:
    # You must replace this email address with your own.
    # Let's Encrypt will use this to contact you about expiring
    # certificates, and issues related to your account.
    email: gabrielfalcao@protonmail.com
    server: https://acme-staging-v02.api.letsencrypt.org/directory
    privateKeySecretRef:
      # Secret resource that will be used to store the account's private key.
      name: cloud-issuer-staging-gabrielfalcao-protonmail-com
    # Add a single challenge solver, HTTP01 using nginx
    solvers:
    - http01:
        ingress:
          class: nginx
YAML
}


resource "kubectl_manifest" "cert_cluster_issuer_prod" {
  # v1.1.0 copied from https://kubernetes.github.io/ingress-nginx/deploy/#digital-ocean on Dec 13 2021
  # https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.0/deploy/static/provider/do/deploy.yaml
  # yaml_body = file("kubernetes_ingress_nginx.yaml")

    yaml_body = <<YAML
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-prod
spec:
  acme:
    # You must replace this email address with your own.
    # Let's Encrypt will use this to contact you about expiring
    # certificates, and issues related to your account.
    email: gabrielfalcao@protonmail.com
    server: https://acme-prod-v02.api.letsencrypt.org/directory
    privateKeySecretRef:
      # Secret resource that will be used to store the account's private key.
      name: cloud-issuer-prod-gabrielfalcao-protonmail-com
    # Add a single challenge solver, HTTP01 using nginx
    solvers:
    - http01:
        ingress:
          class: nginx
YAML
}
