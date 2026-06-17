output "resource_group_name" {
  value       = azurerm_resource_group.resume.name
  description = "Name of the resource group"
}

output "storage_account_name" {
  value       = azurerm_storage_account.resume.name
  description = "Name of the storage account"
}

output "storage_account_id" {
  value       = azurerm_storage_account.resume.id
  description = "ID of the storage account"
}

output "website_url" {
  value       = azurerm_storage_account.resume.primary_web_endpoint
  description = "Primary web endpoint of the storage account"
}

output "storage_account_primary_blob_endpoint" {
  value       = azurerm_storage_account.resume.primary_blob_endpoint
  description = "Primary blob endpoint"
}
