resource "azurerm_backup_policy_file_share" "backup_policy_file_shares" {
  for_each = var.backup_policy_file_shares

  name                = each.value.name
  recovery_vault_name = each.value.recovery_vault_name
  resource_group_name = each.value.resource_group_name
  timezone            = each.value.timezone

  backup {
    frequency = each.value.backup.frequency
    dynamic "hourly" {
      for_each = each.value.backup.hourly != null ? [each.value.backup.hourly] : []
      content {
        interval        = hourly.value.interval
        start_time      = hourly.value.start_time
        window_duration = hourly.value.window_duration
      }
    }
    time = each.value.backup.time
  }

  retention_daily {
    count = each.value.retention_daily.count
  }

  dynamic "retention_monthly" {
    for_each = each.value.retention_monthly != null ? [each.value.retention_monthly] : []
    content {
      count             = retention_monthly.value.count
      days              = retention_monthly.value.days
      include_last_days = retention_monthly.value.include_last_days
      weekdays          = retention_monthly.value.weekdays
      weeks             = retention_monthly.value.weeks
    }
  }

  dynamic "retention_weekly" {
    for_each = each.value.retention_weekly != null ? [each.value.retention_weekly] : []
    content {
      count    = retention_weekly.value.count
      weekdays = retention_weekly.value.weekdays
    }
  }

  dynamic "retention_yearly" {
    for_each = each.value.retention_yearly != null ? [each.value.retention_yearly] : []
    content {
      count             = retention_yearly.value.count
      days              = retention_yearly.value.days
      include_last_days = retention_yearly.value.include_last_days
      months            = retention_yearly.value.months
      weekdays          = retention_yearly.value.weekdays
      weeks             = retention_yearly.value.weeks
    }
  }
}

