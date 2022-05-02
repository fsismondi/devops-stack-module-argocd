variable "cluster_name" {
  description = "The name of the cluster to create."
  type        = string
  default     = ""
}

variable "base_domain" {
  description = "The base domain used for Ingresses."
  type        = string
  default     = ""
}

variable "cluster_issuer" {
  description = "Cluster Issuer"
  type        = string
  default     = ""
}

variable "oidc" {
  description = "OIDC Settings"
  type        = any
  default     = {}
}

variable "argocd" {
  description = "ArgoCD settings"
  type        = any
  default     = {}
}

variable "repositories" {
  description = "A list of repositories to add to ArgoCD."
  type        = map(map(string))
  default     = {}
}

variable "helm_values" {
  description = "Helm values, passed as a list of HCL structures."
  type        = any
  default     = [{}]
}

variable "argocd_server_secretkey" {
  description = "ArgoCD Server Secert Key to avoid regenerate token on redeploy."
  type        = string
  default     = null
}

variable "bootstrap_values" {
  description = "Helm values generated by bootstrap module"
  type        = any
  default     = []
}

variable "namespace" {
  type    = string
  default = "argocd"
}

variable "argocd_namespace" {
  type    = string
  default = "argocd"
}

variable "dependency_ids" {
  type = map(string)

  default = {}
}
