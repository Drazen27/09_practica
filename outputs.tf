output "vnet_name" {
  description = "Nombre de la Vnet"
  value       = azurerm_virtual_network.terraform_vnet.name
}
output "resource_group_name" {
  description = "Nombre de la resource group"
  value       = azurerm_resource_group.terraform_rg.name
}
