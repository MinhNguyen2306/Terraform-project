variable "environment" {
  type        = string
  description = "Environment name (dev, stg, prod)"
  validation {
    condition     = contains(["dev", "stg", "prod"], var.environment)
    error_message = "Environment must be dev, stg, or prod."
  }
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group"
}

variable "location" {
  type        = string
  default     = "Southeast Asia"
  description = "Azure region for resources"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique, lowercase letters and numbers only, 3-24 characters, no hyphens."
}

variable "storage_account_tier" {
  type        = string
  default     = "Standard"
  description = "Storage account tier (Standard or Premium)"
}

variable "storage_replication_type" {
  type        = string
  default     = "LRS"
  description = "Storage replication type (LRS, GRS, RAGRS, ZRS)"
  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS"], var.storage_replication_type)
    error_message = "Valid values are LRS, GRS, RAGRS, or ZRS."
  }
}
