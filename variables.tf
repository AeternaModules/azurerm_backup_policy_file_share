variable "backup_policy_file_shares" {
  description = <<EOT
Map of backup_policy_file_shares, attributes below
Required:
    - name
    - recovery_vault_name
    - resource_group_name
    - backup (block):
        - frequency (required)
        - hourly (optional, block):
            - interval (required)
            - start_time (required)
            - window_duration (required)
        - time (optional)
    - retention_daily (block):
        - count (required)
Optional:
    - timezone
    - retention_monthly (block):
        - count (required)
        - days (optional)
        - include_last_days (optional)
        - weekdays (optional)
        - weeks (optional)
    - retention_weekly (block):
        - count (required)
        - weekdays (required)
    - retention_yearly (block):
        - count (required)
        - days (optional)
        - include_last_days (optional)
        - months (required)
        - weekdays (optional)
        - weeks (optional)
EOT

  type = map(object({
    name                = string
    recovery_vault_name = string
    resource_group_name = string
    timezone            = optional(string, "UTC")
    backup = object({
      frequency = string
      hourly = optional(object({
        interval        = number
        start_time      = string
        window_duration = number
      }))
      time = optional(string)
    })
    retention_daily = object({
      count = number
    })
    retention_monthly = optional(object({
      count             = number
      days              = optional(set(string))
      include_last_days = optional(bool, false)
      weekdays          = optional(set(string))
      weeks             = optional(set(string))
    }))
    retention_weekly = optional(object({
      count    = number
      weekdays = set(string)
    }))
    retention_yearly = optional(object({
      count             = number
      days              = optional(set(string))
      include_last_days = optional(bool, false)
      months            = set(string)
      weekdays          = optional(set(string))
      weeks             = optional(set(string))
    }))
  }))
}

