output "certificate_authorities_id" {
  description = "Map of id values across all certificate_authorities, keyed the same as var.certificate_authorities except keys with no id are omitted"
  value       = { for k, v in consul_certificate_authority.certificate_authorities : k => v.id if v.id != null && length(v.id) > 0 }
}
output "certificate_authorities_config" {
  description = "Map of config values across all certificate_authorities, keyed the same as var.certificate_authorities except keys with no config are omitted"
  value       = { for k, v in consul_certificate_authority.certificate_authorities : k => v.config if v.config != null && length(v.config) > 0 }
}
output "certificate_authorities_config_json" {
  description = "Map of config_json values across all certificate_authorities, keyed the same as var.certificate_authorities except keys with no config_json are omitted"
  value       = { for k, v in consul_certificate_authority.certificate_authorities : k => v.config_json if v.config_json != null && length(v.config_json) > 0 }
}
output "certificate_authorities_connect_provider" {
  description = "Map of connect_provider values across all certificate_authorities, keyed the same as var.certificate_authorities except keys with no connect_provider are omitted"
  value       = { for k, v in consul_certificate_authority.certificate_authorities : k => v.connect_provider if v.connect_provider != null && length(v.connect_provider) > 0 }
}

