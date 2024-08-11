resource "azurerm_resource_group" "rg1" {
    name = var.resource_group_name
    location = var.location 
}
resource "random_string" "string" {
    upper = false
    length = 10
    special = false
}
resource "azurerm_storage_account" "storage" {
    name = "my-${random_string.string.id}"
    location = var.location
    resource_group_name = var.resource_group_name
    account_replication_type = "LRS"
    account_tier = "standard"
}
resource "azurerm_storage_container" "blob" {
    name = var.container_name
    storage_account_name = azurerm_storage_account.storage.name
}
