variable "transit_gateway_attachments" {
  description = <<EOT
Map of transit_gateway_attachments, attributes below
Required:
    - environment (block):
        - id (required)
    - network (block):
        - id (required)
Optional:
    - display_name
    - aws (block):
        - ram_resource_share_arn (required)
        - routes (required)
        - transit_gateway_id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    display_name = optional(string)
    environment = object({
      id = string
    })
    network = object({
      id = string
    })
    aws = optional(object({
      ram_resource_share_arn = string
      routes                 = list(string)
      transit_gateway_id     = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

