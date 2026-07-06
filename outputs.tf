output "backup_policy_file_shares" {
  description = "All backup_policy_file_share resources"
  value       = azurerm_backup_policy_file_share.backup_policy_file_shares
}
output "backup_policy_file_shares_backup" {
  description = "List of backup values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.backup]
}
output "backup_policy_file_shares_backup_tier" {
  description = "List of backup_tier values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.backup_tier]
}
output "backup_policy_file_shares_name" {
  description = "List of name values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.name]
}
output "backup_policy_file_shares_recovery_vault_name" {
  description = "List of recovery_vault_name values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.recovery_vault_name]
}
output "backup_policy_file_shares_resource_group_name" {
  description = "List of resource_group_name values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.resource_group_name]
}
output "backup_policy_file_shares_retention_daily" {
  description = "List of retention_daily values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.retention_daily]
}
output "backup_policy_file_shares_retention_monthly" {
  description = "List of retention_monthly values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.retention_monthly]
}
output "backup_policy_file_shares_retention_weekly" {
  description = "List of retention_weekly values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.retention_weekly]
}
output "backup_policy_file_shares_retention_yearly" {
  description = "List of retention_yearly values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.retention_yearly]
}
output "backup_policy_file_shares_snapshot_retention_in_days" {
  description = "List of snapshot_retention_in_days values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.snapshot_retention_in_days]
}
output "backup_policy_file_shares_timezone" {
  description = "List of timezone values across all backup_policy_file_shares"
  value       = [for k, v in azurerm_backup_policy_file_share.backup_policy_file_shares : v.timezone]
}

