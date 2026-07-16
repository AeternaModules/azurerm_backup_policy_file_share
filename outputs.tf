output "backup_policy_file_shares_id" {
  description = "Map of id values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_policy_file_shares_backup" {
  description = "Map of backup values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.backup if v.backup != null && length(v.backup) > 0 }
}
output "backup_policy_file_shares_backup_tier" {
  description = "Map of backup_tier values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.backup_tier if v.backup_tier != null && length(v.backup_tier) > 0 }
}
output "backup_policy_file_shares_name" {
  description = "Map of name values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.name if v.name != null && length(v.name) > 0 }
}
output "backup_policy_file_shares_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.recovery_vault_name if v.recovery_vault_name != null && length(v.recovery_vault_name) > 0 }
}
output "backup_policy_file_shares_resource_group_name" {
  description = "Map of resource_group_name values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "backup_policy_file_shares_retention_daily" {
  description = "Map of retention_daily values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.retention_daily if v.retention_daily != null && length(v.retention_daily) > 0 }
}
output "backup_policy_file_shares_retention_monthly" {
  description = "Map of retention_monthly values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.retention_monthly if v.retention_monthly != null && length(v.retention_monthly) > 0 }
}
output "backup_policy_file_shares_retention_weekly" {
  description = "Map of retention_weekly values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.retention_weekly if v.retention_weekly != null && length(v.retention_weekly) > 0 }
}
output "backup_policy_file_shares_retention_yearly" {
  description = "Map of retention_yearly values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.retention_yearly if v.retention_yearly != null && length(v.retention_yearly) > 0 }
}
output "backup_policy_file_shares_snapshot_retention_in_days" {
  description = "Map of snapshot_retention_in_days values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.snapshot_retention_in_days if v.snapshot_retention_in_days != null }
}
output "backup_policy_file_shares_timezone" {
  description = "Map of timezone values across all backup_policy_file_shares, keyed the same as var.backup_policy_file_shares"
  value       = { for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}

