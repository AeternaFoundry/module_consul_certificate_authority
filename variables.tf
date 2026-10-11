variable "certificate_authorities" {
  description = <<EOT
Map of certificate_authorities, attributes below
Required:
    - connect_provider
Optional:
    - config
    - config_json
EOT

  type = map(object({
    connect_provider = string
    config           = optional(map(string))
    config_json      = optional(string)
  }))
}

