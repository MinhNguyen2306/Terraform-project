variable "resource_group_name" {
  type    = string
  default = "rg-cloud-resume"
}

variable "location" {
  type    = string
  default = "Southeast Asia"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique, lowercase letters and numbers only, 3-24 characters, no hyphens."
}
