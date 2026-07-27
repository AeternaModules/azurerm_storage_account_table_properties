variable "storage_account_table_properties" {
  description = <<EOT
Map of storage_account_table_properties, attributes below
Required:
    - storage_account_id
Optional:
    - cors_rule (block):
        - allowed_headers (required)
        - allowed_methods (required)
        - allowed_origins (required)
        - exposed_headers (required)
        - max_age_in_seconds (required)
    - hour_metrics (block):
        - include_apis (optional)
        - retention_policy_days (optional)
        - version (required)
    - logging (block):
        - delete (required)
        - read (required)
        - retention_policy_days (optional)
        - version (required)
        - write (required)
    - minute_metrics (block):
        - include_apis (optional)
        - retention_policy_days (optional)
        - version (required)
EOT

  type = map(object({
    storage_account_id = string
    cors_rule = optional(list(object({
      allowed_headers    = list(string)
      allowed_methods    = list(string)
      allowed_origins    = list(string)
      exposed_headers    = list(string)
      max_age_in_seconds = number
    })))
    hour_metrics = optional(object({
      include_apis          = optional(bool)
      retention_policy_days = optional(number)
      version               = string
    }))
    logging = optional(object({
      delete                = bool
      read                  = bool
      retention_policy_days = optional(number)
      version               = string
      write                 = bool
    }))
    minute_metrics = optional(object({
      include_apis          = optional(bool)
      retention_policy_days = optional(number)
      version               = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_account_table_properties : (
        v.cors_rule == null || (length(v.cors_rule) <= 5)
      )
    ])
    error_message = "Each cors_rule list must contain at most 5 items"
  }
}

