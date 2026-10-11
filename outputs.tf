output "transit_gateway_attachments_id" {
  description = "Map of id values across all transit_gateway_attachments, keyed the same as var.transit_gateway_attachments except keys with no id are omitted"
  value       = { for k, v in confluent_transit_gateway_attachment.transit_gateway_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "transit_gateway_attachments_aws" {
  description = "Map of aws values across all transit_gateway_attachments, keyed the same as var.transit_gateway_attachments except keys with no aws are omitted"
  value       = { for k, v in confluent_transit_gateway_attachment.transit_gateway_attachments : k => one(v.aws) if v.aws != null && length(v.aws) > 0 }
}
output "transit_gateway_attachments_display_name" {
  description = "Map of display_name values across all transit_gateway_attachments, keyed the same as var.transit_gateway_attachments except keys with no display_name are omitted"
  value       = { for k, v in confluent_transit_gateway_attachment.transit_gateway_attachments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "transit_gateway_attachments_environment" {
  description = "Map of environment values across all transit_gateway_attachments, keyed the same as var.transit_gateway_attachments except keys with no environment are omitted"
  value       = { for k, v in confluent_transit_gateway_attachment.transit_gateway_attachments : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "transit_gateway_attachments_network" {
  description = "Map of network values across all transit_gateway_attachments, keyed the same as var.transit_gateway_attachments except keys with no network are omitted"
  value       = { for k, v in confluent_transit_gateway_attachment.transit_gateway_attachments : k => one(v.network) if v.network != null && length(v.network) > 0 }
}

