output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "sql_database_name" {
  value = azurerm_sql_database.sql_database.name
}
