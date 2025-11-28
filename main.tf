//Workflow
/*
Write -> Init -> Plan -> Apply -> Destroy
terraform apply --auto-approve - Para una confirmación automatica de apply
terraform destroy --auto-approve - Para una confirmación automatica de destroy
terraform state refresh - refresca e inegra al estado los cambios que se pudieron haber hecho directamente desde el portal
terraform plan -refresh-only -muestra los cambios manuales sin integrarlos al estado
*/
resource "azurerm_resource_group" "terraform_rg" {
  name     = "${var.name}-rg-${terraform.workspace}"
  location = var.location
  tags     = var.common_tags
}
resource "azurerm_virtual_network" "terraform_vnet" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.terraform_rg.name
  location            = var.location
  address_space       = var.address_space
  tags                = var.common_tags
}
