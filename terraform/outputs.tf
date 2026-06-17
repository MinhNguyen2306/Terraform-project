output "resource_group_name" {
  value = azurerm_resource_group.resume.name
}

output "storage_account_name" {
  value = azurerm_storage_account.resume.name
}

output "website_url" {
  value = azurerm_storage_account.resume.primary_web_endpoint
}
