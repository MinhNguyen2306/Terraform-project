resource "azurerm_resource_group" "resume" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_storage_account" "resume" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resume.name
  location                 = azurerm_resource_group.resume.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
  account_kind             = "StorageV2"
  min_tls_version          = "TLS1_2"

  allow_nested_items_to_be_public = true

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# New: Use the dedicated static website resource
resource "azurerm_storage_account_static_website" "resume" {
  storage_account_id = azurerm_storage_account.resume.id
  index_document     = "index.html"
  error_404_document = "404.html"
}