output "ssm_maintenance_window_targets_id" {
  description = "Map of id values across all ssm_maintenance_window_targets, keyed the same as var.ssm_maintenance_window_targets"
  value       = { for k, v in aws_ssm_maintenance_window_target.ssm_maintenance_window_targets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssm_maintenance_window_targets_description" {
  description = "Map of description values across all ssm_maintenance_window_targets, keyed the same as var.ssm_maintenance_window_targets"
  value       = { for k, v in aws_ssm_maintenance_window_target.ssm_maintenance_window_targets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ssm_maintenance_window_targets_name" {
  description = "Map of name values across all ssm_maintenance_window_targets, keyed the same as var.ssm_maintenance_window_targets"
  value       = { for k, v in aws_ssm_maintenance_window_target.ssm_maintenance_window_targets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ssm_maintenance_window_targets_owner_information" {
  description = "Map of owner_information values across all ssm_maintenance_window_targets, keyed the same as var.ssm_maintenance_window_targets"
  value       = { for k, v in aws_ssm_maintenance_window_target.ssm_maintenance_window_targets : k => v.owner_information if v.owner_information != null && length(v.owner_information) > 0 }
}
output "ssm_maintenance_window_targets_region" {
  description = "Map of region values across all ssm_maintenance_window_targets, keyed the same as var.ssm_maintenance_window_targets"
  value       = { for k, v in aws_ssm_maintenance_window_target.ssm_maintenance_window_targets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssm_maintenance_window_targets_resource_type" {
  description = "Map of resource_type values across all ssm_maintenance_window_targets, keyed the same as var.ssm_maintenance_window_targets"
  value       = { for k, v in aws_ssm_maintenance_window_target.ssm_maintenance_window_targets : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "ssm_maintenance_window_targets_targets" {
  description = "Map of targets values across all ssm_maintenance_window_targets, keyed the same as var.ssm_maintenance_window_targets"
  value       = { for k, v in aws_ssm_maintenance_window_target.ssm_maintenance_window_targets : k => v.targets if v.targets != null && length(v.targets) > 0 }
}
output "ssm_maintenance_window_targets_window_id" {
  description = "Map of window_id values across all ssm_maintenance_window_targets, keyed the same as var.ssm_maintenance_window_targets"
  value       = { for k, v in aws_ssm_maintenance_window_target.ssm_maintenance_window_targets : k => v.window_id if v.window_id != null && length(v.window_id) > 0 }
}

