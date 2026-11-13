output "certificate_authorities_id" {
  description = "Map of id values across all certificate_authorities, keyed the same as var.certificate_authorities"
  value       = { for k, v in consul_certificate_authority.certificate_authorities : k => v.id }
}
output "certificate_authorities_config" {
  description = "Map of config values across all certificate_authorities, keyed the same as var.certificate_authorities"
  value       = { for k, v in consul_certificate_authority.certificate_authorities : k => v.config }
}
output "certificate_authorities_config_json" {
  description = "Map of config_json values across all certificate_authorities, keyed the same as var.certificate_authorities"
  value       = { for k, v in consul_certificate_authority.certificate_authorities : k => v.config_json }
}
output "certificate_authorities_connect_provider" {
  description = "Map of connect_provider values across all certificate_authorities, keyed the same as var.certificate_authorities"
  value       = { for k, v in consul_certificate_authority.certificate_authorities : k => v.connect_provider }
}

