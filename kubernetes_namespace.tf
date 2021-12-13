resource "kubernetes_namespace" "cognodes" {
  metadata {
    name = "cognodes"
  }
}
