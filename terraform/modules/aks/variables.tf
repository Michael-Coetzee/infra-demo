variable "name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "demo-aks"
}

variable "location" {
  description = "Azure region (should match RG)"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for AKS"
  type        = string
  default     = "demoaks"
}

variable "node_count" {
  description = "Number of nodes in default pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size for nodes"
  type        = string
  default     = "Standard_B2s"
}

variable "tags" {
  description = "Tags for AKS"
  type        = map(string)
  default     = {}
}
