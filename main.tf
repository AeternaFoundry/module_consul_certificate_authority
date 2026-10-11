resource "consul_certificate_authority" "certificate_authorities" {
  for_each = var.certificate_authorities

  connect_provider = each.value.connect_provider
  config           = each.value.config
  config_json      = each.value.config_json
}

