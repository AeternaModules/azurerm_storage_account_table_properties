output "storage_account_table_properties_id" {
  description = "Map of id values across all storage_account_table_properties, keyed the same as var.storage_account_table_properties"
  value       = { for k, v in azurerm_storage_account_table_properties.storage_account_table_properties : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_account_table_properties_cors_rule" {
  description = "Map of cors_rule values across all storage_account_table_properties, keyed the same as var.storage_account_table_properties"
  value       = { for k, v in azurerm_storage_account_table_properties.storage_account_table_properties : k => v.cors_rule if v.cors_rule != null && length(v.cors_rule) > 0 }
}
output "storage_account_table_properties_hour_metrics" {
  description = "Map of hour_metrics values across all storage_account_table_properties, keyed the same as var.storage_account_table_properties"
  value       = { for k, v in azurerm_storage_account_table_properties.storage_account_table_properties : k => v.hour_metrics if v.hour_metrics != null && length(v.hour_metrics) > 0 }
}
output "storage_account_table_properties_logging" {
  description = "Map of logging values across all storage_account_table_properties, keyed the same as var.storage_account_table_properties"
  value       = { for k, v in azurerm_storage_account_table_properties.storage_account_table_properties : k => v.logging if v.logging != null && length(v.logging) > 0 }
}
output "storage_account_table_properties_minute_metrics" {
  description = "Map of minute_metrics values across all storage_account_table_properties, keyed the same as var.storage_account_table_properties"
  value       = { for k, v in azurerm_storage_account_table_properties.storage_account_table_properties : k => v.minute_metrics if v.minute_metrics != null && length(v.minute_metrics) > 0 }
}
output "storage_account_table_properties_storage_account_id" {
  description = "Map of storage_account_id values across all storage_account_table_properties, keyed the same as var.storage_account_table_properties"
  value       = { for k, v in azurerm_storage_account_table_properties.storage_account_table_properties : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}

