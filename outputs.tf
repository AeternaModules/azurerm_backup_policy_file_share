output "backup_policy_file_shares_backup" {
  description = "Map of backup values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.backup }
}
output "backup_policy_file_shares_backup_tier" {
  description = "Map of backup_tier values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.backup_tier }
}
output "backup_policy_file_shares_name" {
  description = "Map of name values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.name }
}
output "backup_policy_file_shares_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.recovery_vault_name }
}
output "backup_policy_file_shares_resource_group_name" {
  description = "Map of resource_group_name values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.resource_group_name }
}
output "backup_policy_file_shares_retention_daily" {
  description = "Map of retention_daily values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.retention_daily }
}
output "backup_policy_file_shares_retention_monthly" {
  description = "Map of retention_monthly values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.retention_monthly }
}
output "backup_policy_file_shares_retention_weekly" {
  description = "Map of retention_weekly values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.retention_weekly }
}
output "backup_policy_file_shares_retention_yearly" {
  description = "Map of retention_yearly values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.retention_yearly }
}
output "backup_policy_file_shares_snapshot_retention_in_days" {
  description = "Map of snapshot_retention_in_days values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.snapshot_retention_in_days }
}
output "backup_policy_file_shares_timezone" {
  description = "Map of timezone values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.timezone }
}

