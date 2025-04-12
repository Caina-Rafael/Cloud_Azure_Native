resource "azurerm_resource_group" "rg" {
  name     = "rg-storage-sql-demo"
  location = "East US"
}

resource "azurerm_sql_server" "sql_server" {
  name                         = "sqlserverdemo123"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "Password@123"

  tags = {
    environment = "development"
  }
}

resource "azurerm_sql_database" "sql_database" {
  name                = "productdb"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  server_name         = azurerm_sql_server.sql_server.name
  sku_name            = "S1"
}

resource "azurerm_storage_account" "storage" {
  name                     = "mystorageacct123"
  resource_group_name       = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
}
