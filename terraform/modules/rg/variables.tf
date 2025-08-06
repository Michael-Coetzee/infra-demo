variable "name" {
  description = "Name of the resource group"
  type        = string
  default     = "demo-rg"
}

variable "location" {
  description = "Azure region for the resource group"
  type        = string
  default     = "southafricanorth"
}

variable "tags" {
  description = "Tags for resource management"
  type        = map(string)
  default     = {
    environment = "demo"
    owner       = "michael-coetzee"
  }
}
