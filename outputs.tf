output "prometheus_query_logging_configurations_destination" {
  description = "Map of destination values across all prometheus_query_logging_configurations, keyed the same as var.prometheus_query_logging_configurations"
  value       = { for k, v in aws_prometheus_query_logging_configuration.prometheus_query_logging_configurations : k => v.destination if v.destination != null && length(v.destination) > 0 }
}
output "prometheus_query_logging_configurations_region" {
  description = "Map of region values across all prometheus_query_logging_configurations, keyed the same as var.prometheus_query_logging_configurations"
  value       = { for k, v in aws_prometheus_query_logging_configuration.prometheus_query_logging_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "prometheus_query_logging_configurations_workspace_id" {
  description = "Map of workspace_id values across all prometheus_query_logging_configurations, keyed the same as var.prometheus_query_logging_configurations"
  value       = { for k, v in aws_prometheus_query_logging_configuration.prometheus_query_logging_configurations : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

