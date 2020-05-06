# Variables for GCP infrastructure module

variable "gcp_account_json" {
  type        = string
  description = "File path and name of service account access token file."
}

variable "gcp_project" {
  type        = string
  description = "GCP project in which the quickstart will be deployed."
}

variable "gcp_region" {
  type        = string
  description = "GCP region used for all resources."
  default     = "us-central1"
}

variable "gcp_zone" {
  type        = string
  description = "GCP zone used for all resources."
  default     = "us-central1-a"
}

variable "prefix" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "4linux"
}

variable "machine_type" {
  type        = string
  description = "Machine type used for all compute instances"
  default     = "n1-standard-2"
}

variable "docker_version" {
  type        = string
  description = "Docker version to install on nodes"
  default     = "19.03"
}

variable "ssh_key_file_name" {
  type        = string
  description = "File path and name of SSH private key used for infrastructure and RKE"
  default     = " "
}

variable "rke_kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for Rancher server RKE cluster"
  default     = "v1.15.3-rancher1-1"
}

variable "workload_kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for managed workload cluster"
  default     = "v1.16.6-rancher1-2"
}

variable "cert_manager_version" {
  type        = string
  description = "Version of cert-mananger to install alongside Rancher (format: 0.0.0)"
  default     = "0.12.0"
}

variable "rancher_version" {
  type        = string
  description = "Rancher server version (format v0.0.0)"
  default     = "v2.3.5"
}

# Required
variable "rancher_server_admin_password" {
  type        = string
  description = "Admin password to use for Rancher server bootstrap"
}


# Local variables used to reduce repetition
locals {
  node_username = "ubuntu"
}
