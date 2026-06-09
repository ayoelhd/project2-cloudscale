output "resource_group_name" {
  description = "Name of the provisioned resource group"
  value       = azurerm_resource_group.main.name
}

output "container_public_ip" {
  description = "Public IP address of the Azure Container Instance"
  value       = azurerm_container_group.app.ip_address
}

output "container_fqdn" {
  description = "Fully-qualified domain name of the container (browser URL)"
  value       = "http://${azurerm_container_group.app.fqdn}"
}

output "container_name" {
  description = "Name of the Azure Container Instance"
  value       = azurerm_container_group.app.name
}
