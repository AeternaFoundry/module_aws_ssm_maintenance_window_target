variable "ssm_maintenance_window_targets" {
  description = <<EOT
Map of ssm_maintenance_window_targets, attributes below
Required:
    - resource_type
    - window_id
    - targets (block):
        - key (required)
        - values (required)
Optional:
    - description
    - name
    - owner_information
    - region
EOT

  type = map(object({
    resource_type     = string
    window_id         = string
    description       = optional(string)
    name              = optional(string)
    owner_information = optional(string)
    region            = optional(string)
    targets = list(object({
      key    = string
      values = list(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ssm_maintenance_window_targets : (
        length(v.targets) >= 1 && length(v.targets) <= 5
      )
    ])
    error_message = "Each targets list must contain between 1 and 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_maintenance_window_targets : (
        v.owner_information == null || (length(v.owner_information) >= 1 && length(v.owner_information) <= 128)
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

